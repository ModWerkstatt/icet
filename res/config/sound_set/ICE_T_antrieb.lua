local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/ice_t/idle.wav", 25.0,
		{
			{ 0.00 , 1.0 },
			{ 0.05, 0.5 },
			{ 0.10, 0.0 },
			{ 1.00 , 0.0 } },

		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } },
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/ice_t/summen.wav", 25.0,
		{
			{ 0.0 , 0.0 },
			{ 0.05 , 5.0 },
			{ 0.1 , 0.0 },
			{ 1.0 , 0.0 } },

		{
			{ 0.0, 0.9 },
			{ 1.0, 1.2 } },
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/ice_t/drive.wav", 15.0,
		{
			{ 0.0 , 0.0 },
			{ 0.05 , 0.1 },
			{ 0.25 , 1.0 },
			{ 0.255 , 0.1 },
			{ 1.0 , 0.0 } },

		{
			{ 0.0, 0.85 },
			{ 1.0, 1.4 } },
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/ice_t/drive.wav", 15.0,
		{
			{ 0.0 , 0.0 },
			{ 0.24 , 0.0 },
			{ 0.25, 1.2 },
			{ 0.30, 1.7 },
			{ 0.40, 1.8 },
			{ 1.00, 1.2 } },

		{
			{ 0.0, 0.8 },
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


soundsetutil.addEvent(data, "openDoors", { "vehicle/ice_td/opendoor.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/ice_td/closedoor.wav" }, 5.0)

return data

end
