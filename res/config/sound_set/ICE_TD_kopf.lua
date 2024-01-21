local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/ice_td/stehen.wav", 25.0,
		{
			{ 0.00 , 1.0 },
			{ 0.10, 0.6 },
			{ 0.30, 0.2 },
			{ 1.00 , 0.0 } },
		
		{
			{ 0.0, 0.8 },
			{ 1.0, 1.0 } }, 
		"speed01")
		
soundsetutil.addTrackParam01
(data, "vehicle/ice_td/fahrt.wav", 25.0,
		{
			{ 0.0 , 0.0 },
			{ 1.0, 1.0 } },
		
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.4 } }, 
		"power01")
		
soundsetutil.addTrackParam01
(data, "vehicle/ice_td/fahrt2.wav", 25.0,
		{
			{ 0.0 , 0.0 },
			{ 0.15, 0.4 },
			{ 0.20, 0.5 },
			{ 0.30, 0.8 },
			{ 1.00, 1.5 } },
		
		{
			{ 0.0, 0.5 },
			{ 1.0, 1.0 } }, 
		"speed01")


soundsetutil.addTrackParam01
(data, "vehicle/ice_td/schnell.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 0.2, 0.1 },
			{ 1.0, 1.0 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")
		
soundsetutil.addTrackParam01
(data, "vehicle/ice_td/wind.wav", 25.0,
		{
			{ 0.0, 0.0 },
			{ 1.0, 0.7 } },
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")

soundsetutil.addTrackSqueal(data, "vehicle/ice_td/kurve.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/ice_td/bremsen.wav", 25.0, 1.0)

soundsetutil.addEvent(data, "horn", { "vehicle/ice_td/horn.wav" }, 50.0)

soundsetutil.addEvent(data, "openDoors", { "vehicle/ice_td/opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/ice_td/closedoor.wav" }, 5.0)

return data

end