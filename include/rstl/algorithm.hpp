#ifndef _RSTL_MATH_HPP
#define _RSTL_MATH_HPP

namespace rstl {
template <typename T>
inline const T& min_val(const T& a, const T& b) {
    return (b < a) ? b : a;
}

template <typename T>
inline const T& max_val(const T& a, const T& b) {
    return (a < b) ? b : a;
}
}
#endif // _RSTL_MATH_HPP