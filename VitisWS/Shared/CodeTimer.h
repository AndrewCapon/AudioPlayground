#pragma once

#include "defines.h"
#include "Timer.h"

template <unsigned int SIZE>
class CodeTimer
{
public:
	CodeTimer(const char *pName, const char **sTimerLabels, Timer &timer)
	: m_pName(pName),
		m_sTimerLabels(sTimerLabels),
		m_timer(timer)
	{
		ClearAll();
	}

	FORCE_INLINE void Clear(uint32_t index)
	{
		m_uCount[index] = 0;
		m_uTotal[index] = 0;
	}

	FORCE_INLINE void ClearAll(void)
	{
		for(uint32_t uIndex = 0; uIndex < SIZE; uIndex++)
			Clear(uIndex);
	}

	FORCE_INLINE void StartTiming(uint32_t uIndex)
	{
		m_uValue[uIndex] = m_timer.GetValue();
	}

	FORCE_INLINE void StopTiming(uint32_t uIndex)
	{
		m_uTotal[uIndex] += GetTimeDifference(uIndex);
		m_uCount[uIndex]++;
	}

	FORCE_INLINE void TransitionTiming(uint32_t uFromIndex, uint32_t uToIndex)
	{
		StopTiming(uFromIndex);
		StartTiming(uToIndex);
	}


	FORCE_INLINE uint32_t GetTotalTime(uint32_t uIndex)
	{
		return m_uTotal[uIndex];
	}

	FORCE_INLINE uint32_t GetCount(uint32_t uIndex)
	{
		return m_uCount[uIndex];
	}

	FORCE_INLINE uint32_t GetIterationTime(uint32_t uIndex, uint32_t uIterationCount)
	{
		if(m_uCount[uIndex])
			return m_uTotal[uIndex] / uIterationCount;
		else
			return 0;
	}

	FORCE_INLINE uint32_t GetIterationTime(uint32_t uIndex)
	{
		if(m_uCount[uIndex])
			return m_uTotal[uIndex] / m_uCount[uIndex];
		else
			return 0;
	}


	FORCE_INLINE uint32_t GetTimeDifference(uint32_t uIndex)
	{
		uint32_t uResult;

		uint32_t uNowValue = m_timer.GetValue();
		if(uNowValue < m_uValue[uIndex])
			uResult = uNowValue + (0xffffffff - m_uValue[uIndex]);
		else
			uResult = uNowValue - m_uValue[uIndex];

		m_uValue[uIndex] = uNowValue;

		return uResult;
	}

	FORCE_INLINE void LogTimes(uint32_t uUseIterationCount)
	{
		printf("%s [%lu]:\n", m_pName, uUseIterationCount);
		for(uint32_t uIndex = 0; uIndex < SIZE; uIndex++)
			printf("  %s [%lu] %lu - %lu\n", m_sTimerLabels[uIndex], GetCount(uIndex), GetIterationTime(uIndex, uUseIterationCount), GetIterationTime(uIndex));
		ClearAll();
	}
private:
	const char *m_pName;
	const char **m_sTimerLabels;

	Timer 	 	&m_timer;
	uint32_t 	m_uValue[SIZE];
	uint32_t 	m_uTotal[SIZE];
	uint32_t 	m_uCount[SIZE];
};
