#ifndef _CMATH_HPP
#define _CMATH_HPP

#include "types.h"

#include "math.h"

#define M_PIF 3.14159265358979323846f

class CMath {
public:
  static f32 FastCosR(f32 v);
  static f32 FastSinR(f32 v);
  static inline f32 FastFmod(f32 x, f32 y) {
    int v = static_cast< int >(x * (1.f / y));
    return x - v * y;
  }
  template < typename T >
  static const T& Clamp(const T& min, const T& val, const T& max); // TODO: weak
  static f32 SqrtF(f32 v);
  static inline f32 Limit(f32 v, f32 h) { return fabs(v) > h ? h * Sign(v) : v; }
  static inline f32 Sign(f32 v) { return FastFSel(v, 1.f, -1.f); }
  static inline f32 FastFSel(register f32 v, register f32 h, register f32 l) {
    register f32 out;
    asm {
      fsel out, v, h, l
    }
    return out;
  }
  static inline f32 AbsF(f32 v) { return fabs(v); }
  // WrapPi__5CMathFf weak
  // WrapTwoPi__5CMathFf weak
  // FastFmod__5CMathFfff weak
  // Min<f>__5CMathFRCfRCf weak
  // Max<f>__5CMathFRCfRCf weak
  // InvSqrtF__5CMathFf global
  // FastArcCosR__5CMathFf global
  // SlowCosineR__5CMathFf global
  // SlowSineR__5CMathFf global
  // FastCosR__5CMathFf global
  // GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff global
  // ClampRadians__5CMathFf weak
  // ModF__5CMathFff weak
  // Deg2Rad__5CMathFf weak
  // Deg2Rev__5CMathFf weak
  // ArcCosineR__5CMathFf global
  // FloorF__5CMathFf global
  // BaryToWorld__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f global
  // GetCatmullRomSplinePoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff global
  // FastSqrtF__5CMathFf weak
  // SqrtD__5CMathFd global
  // AbsD__5CMathFd weak
  // IsEpsilon__5CMathFfff global
  // FastMin__5CMathFff weak
  // FastMax__5CMathFff weak
  // PowF__5CMathFff global
  // Rev2Deg__5CMathFf weak
  // GetCatmullRomSplinePoint__5CMathFfffff global
  // SlowTangentR__5CMathFf global
  // Rad2Deg__5CMathFf weak
  // Rad2Rev__5CMathFf weak
  // CeilingF__5CMathFf global
  // ArcTangentR__5CMathFf global
  // Swap<f>__5CMathFRfRf weak
};

#endif
