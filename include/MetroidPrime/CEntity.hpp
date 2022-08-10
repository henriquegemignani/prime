#ifndef _CENTITY_HPP
#define _CENTITY_HPP

#include "types.h"

#include "MetroidPrime/CEntityInfo.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/TCastTo.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CEntity {
public:
  virtual ~CEntity();
  virtual void Accept(IVisitor& visitor) = 0;
  virtual void PreThink(float dt, CStateManager& mgr);
  virtual void Think(float dt, CStateManager& mgr);
  virtual void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId objId, CStateManager& stateMgr);
  virtual void SetActive(bool active);

  CEntity(TUniqueId id, const CEntityInfo& info, bool active, const rstl::string& name);

  static rstl::vector<SConnection> NullConnectionList;

protected:
  TAreaId x4_areaId;
  TUniqueId x8_uid;
  TEditorId xc_editorId;
  rstl::string x10_name;
  rstl::vector<SConnection> x20_conns;
  bool x30_24_active : 1;
  bool x30_25_inGraveyard : 1;
  bool x30_26_scriptingBlocked : 1;
  bool x30_27_inUse : 1;
};

#endif