#ifndef _TRESERVEDAVERAGE_HPP
#define _TRESERVEDAVERAGE_HPP

#include "types.h"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"

template < typename T, int N >
class TReservedAverage : rstl::reserved_vector< T, N > {
public:
  TReservedAverage() {}
  TReservedAverage(const T& value) {
    // resize(value, N); TODO
  }
  void AddValue(const T& value) {
    push_back(value);
    for (int i = size() - 1; i > 0; --i) {
      operator[](i) = operator[](i - 1);
    }
    operator[](0) = value;
  }
  rstl::optional_object< T > GetAverage() const;
};

#endif
