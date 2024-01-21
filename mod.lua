function data()
return {
	info = {
		minorVersion = 2,
		severityAdd = "NONE",
		severityRemove = "WARNING",
		name = _("mod_name"),
		description = _("mod_desc"),
		tags = { "europe", "train", "deutsche bahn", "ice", "high speed" },

        params = {
			{
				key = "icet_fake",
				name = _("Fake"),
				values = { "No", "Yes", },
				tooltip = _("option_fake_icet_desc"),
				defaultIndex = 0,
			},
		},

		dependencies = { },

        requiredMods = { },

		authors = {
		    {
		        name = "ModWerkstatt",
		        role = "CREATOR",
		    },
		},
		url = "",
		visible = true,
	},

	runFn = function (settings, modParams)

	    local hidden = {
			["BR411_fake.lua"] = true,
			["BR411_bistro_fake.lua"] = true,
			["BR411_oebb_fake.lua"] = true,
            ["BR411_db_oebb_fake.lua"] = true,
			["BR411_ICE_fake.lua"] = true,
			["BR411_klima_fake.lua"] = true,
            ["BR411_serie2_fake.lua"] = true,
            ["BR411_klima_serie2_fake.lua"] = true,
			["BR415_fake.lua"] = true,
			["BR415_ICE_fake.lua"] = true,
			["BR415_klima_fake.lua"] = true,
			["BR605_fake.lua"] = true,
			["BR605_DSB_fake.lua"] = true,
			["BR605_DSB_dsb_fake.lua"] = true,
            ["BR605_DSB_ICE_fake.lua"] = true,
		}

		local modelFilter = function(fileName, data)
			local modelName = fileName:match('/ICE_T?_([^/]*.lua)')
			return (modelName==nil or hidden[modelName]~=true)
		end
        local modelFilterTD = function(fileName, data)
			local modelName = fileName:match('/ICE_TD_([^/]*.lua)')
			return (modelName==nil or hidden[modelName]~=true)
		end

		if modParams[getCurrentModId()] ~= nil then
			local params = modParams[getCurrentModId()]
			if params["icet_fake"] == 0 then
				addFileFilter("multipleUnit", modelFilter)
                addFileFilter("multipleUnit", modelFilterTD)
			end
		else
			addFileFilter("multipleUnit", modelFilter)
            addFileFilter("multipleUnit", modelFilterTD)
		end
	end
	}
end
