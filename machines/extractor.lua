-- IndustrialTest
-- Copyright (C) 2023 mrkubax10

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

local S=minetest.get_translator("industrialtest")

industrialtest.internal.registerSimpleElectricItemProcessor({
	name="extractor",
	displayName=S("Extractor"),
	customFrontTexture=true,
	requiresWrench=true,
	capacity=900,
	flow=industrialtest.api.lvPowerFlow,
	opPower=100,
	method="industrialtest.extracting",
	efficiency=1
})
minetest.register_craft({
	type="shaped",
	output="industrialtest:extractor",
	recipe={
		{industrialtest.elementKeys.treetap,"industrialtest:machine_block",industrialtest.elementKeys.treetap},
		{industrialtest.elementKeys.treetap,"industrialtest:electronic_circuit",industrialtest.elementKeys.treetap}
	}
})
