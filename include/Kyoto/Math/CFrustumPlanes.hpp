#ifndef _CFRUSTUMPLANES_HPP
#define _CFRUSTUMPLANES_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

class CAABox;
class CSphere;

class CPlane {
private:
  f32 x;
  f32 y;
  f32 z;
  f32 d;
};

class CFrustumPlanes {
public:
  bool BoxInFrustumPlanes(const CAABox& box) const;
  bool BoxInFrustumPlanes(const rstl::optional_object< CAABox >& box) const;
  bool SphereInFrustumPlanes(const CSphere& sphere) const;
  bool PointInFrustumPlanes(const CVector3f& point) const;

private:
  rstl::reserved_vector< CPlane, 6 > x0_planes;
};

#endif
