#ifndef __CTIMEPROVIDER_HPP__
#define __CTIMEPROVIDER_HPP__

#include <types.h>

class CTimeProvider {
  static CTimeProvider* gCurrentTimeProvider;

public:
  CTimeProvider(const float& time);
  ~CTimeProvider();
  float GetSecondsMod900() const { return x0_currentTime; }

private:
  const float& x0_currentTime; // in seconds
  bool x4_first;
  CTimeProvider* x8_lastProvider;
};

#endif // __CTIMEPROVIDER_HPP__
