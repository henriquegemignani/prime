#ifndef _CANIMPLAYBACKPARMS_HPP
#define _CANIMPLAYBACKPARMS_HPP

#include "types.h"

class CQuaternion;
class CTransform4f;
class CVector3f;

class CAnimPlaybackParms {
private:
  int x0_animA;
  int x4_animB;
  f32 x8_blendWeight;
  bool xc_animating;
  int x10_;
  CVector3f* x14_targetPos;
  bool x18_useLocator;
  CQuaternion* x1c_deltaOrient;
  CTransform4f* x20_objectXf;
  CVector3f* x24_objectScale;
};
CHECK_SIZEOF(CAnimPlaybackParms, 0x28)

#endif
