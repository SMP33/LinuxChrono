#pragma once

#include <time.h>
#include <ctime>
#include <ratio>
#include <chrono>
#include <unistd.h>
#include <pthread.h> 
#include <functional>

namespace common_things
{
	// Timer
	class Time
	{
	private:
		unsigned long long                    point;
		std::chrono::steady_clock::time_point start;

	public:
		Time();
		void               reset();
		/*
		 *first time point
		 **/
		  void               p1();
		/*
		 second time point, returns passed interval
		 **/
		unsigned long long p2();
		/*
		 *currint time in mcs
		 **/
		unsigned long long micros();
		/*
		 *currint time in ms
		 **/
		unsigned long long millis();
	}
	;

	
	// Waiting timeout
	class Timeout
	{
	private:
		Time              time;
		unsigned int       delay;
		unsigned long long lastTick;

	public:
		/*
		 *Restart
		 **/
		void restart();
		/*
		 *d - delay in milliseconds
		 **/
		Timeout(unsigned int d);
		/*
		 *Check if the timeout has come or not
		 **/
		bool         check();
		/*
		 *Time left before timeout. Returns negative value if time is out
		 **/
		long int more();
	}
	;


	class Alarm
	{
	public:
		Alarm();
		~Alarm();		
		/*
		Ставит таймер, который будет вызывать функцию threadFunc с интервалом delay в отдельном потоке.
		threadFunc должна принимать 1 аргумент типа int.
		state - аргумент, который будет передан функции при каждой итерации цикла
		*/
		typedef std::function<void(int)> T;
		void start(T threadFunc, unsigned long long delay, int state);
		/*
		Совершает последний вызов функции с аргументом state
		*/
		void stop(int state);
		/*
		Устанавливает состояние state
		*/
		void setState(int state);
	private:
		Time time;
		pthread_mutex_t mutex;
		pthread_t thread;
		T threadFunc_new;
		T threadFunc;
		void* alarmFunc();
		unsigned long long delay_new;
		unsigned long long delay;
		bool stopFlag;
		int state_new;
		int state;
		void startNew();
		bool funcFlag;
		bool threadFlag;
		bool newThread;
	};
	
}











