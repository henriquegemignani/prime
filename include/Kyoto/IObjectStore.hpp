#ifndef _IOBJECTSTORE_HPP
#define _IOBJECTSTORE_HPP

#include "types.h"

#include "rstl/auto_ptr.hpp"
#include "rstl/rc_ptr.hpp"

#define kInvalidAssetId 0xFFFFFFFFu

typedef uint CAssetId;
typedef uint FourCC;

struct SObjectTag {
  FourCC type;
  CAssetId id;

  SObjectTag() {}
  SObjectTag(FourCC type, CAssetId id) : type(type), id(id) {}
  SObjectTag(const SObjectTag& other) : type(other.type), id(other.id) {}
};

class IObjectStore;
class IObj;
class CVParamTransfer {
public:
  static CVParamTransfer Null();

private:
  rstl::rc_ptr< unkptr > x0_;
};
class CObjectReference {
public:
  CObjectReference(const rstl::auto_ptr< IObj >& obj);
  // : x0_refCount(0)
  // , x2_locked(false)
  // , x2_lockCount(0)
  // , xc_objectStore(nullptr)
  // , x10_object(obj.release())
  // , x14_params(CVParamTransfer::Null()) {}

  CObjectReference(IObjectStore* store, const rstl::auto_ptr< IObj >& obj, SObjectTag tag,
                   CVParamTransfer xfer);

private:
  u16 x0_refCount;
  bool x2_locked : 1;
  u16 x2_lockCount : 15;
  SObjectTag x4_objTag;
  IObjectStore* xc_objectStore;
  IObj* x10_object;
  CVParamTransfer x14_params;
};

class CToken;

class IObjectStore {
public:
  virtual CToken GetObj(const SObjectTag& tag, CVParamTransfer xfer) = 0;
  virtual CToken GetObj(const SObjectTag& tag) = 0;
  virtual CToken GetObj(const char* name) = 0;
  virtual CToken GetObj(const char* name, CVParamTransfer xfer) = 0;
  virtual bool HasObject(const SObjectTag& tag) = 0;
  virtual bool ObjectIsLive(const SObjectTag& tag) = 0;
  virtual unkptr GetFactory() = 0;
  virtual void Flush() = 0;
  virtual void ObjectUnreferenced(const SObjectTag& tag) = 0;
};

#endif
