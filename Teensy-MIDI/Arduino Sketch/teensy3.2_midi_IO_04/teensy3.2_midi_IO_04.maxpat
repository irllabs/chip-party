{
	"boxes" : [ 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Buttons",
				"presentation_rect" : [ 260.800018, 264.400024, 0.0, 0.0 ],
				"numinlets" : 1,
				"numoutlets" : 0,
				"patching_rect" : [ 262.799988, 264.400024, 150.0, 20.0 ],
				"id" : "obj-39",
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "pack 0 0",
				"numinlets" : 2,
				"numoutlets" : 1,
				"patching_rect" : [ 262.799988, 330.400024, 56.0, 22.0 ],
				"id" : "obj-38",
				"outlettype" : [ "" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.toggle",
				"varname" : "live.toggle[1]",
				"presentation_rect" : [ 376.800018, 380.800018, 0.0, 0.0 ],
				"numinlets" : 1,
				"numoutlets" : 1,
				"patching_rect" : [ 302.0, 405.600006, 23.799988, 23.0 ],
				"id" : "obj-35",
				"parameter_enable" : 1,
				"outlettype" : [ "" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.toggle[1]",
						"parameter_shortname" : "live.toggle",
						"parameter_type" : 2,
						"parameter_mmax" : 1.0,
						"parameter_enum" : [ "off", "on" ]
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.toggle",
				"varname" : "live.toggle",
				"numinlets" : 1,
				"numoutlets" : 1,
				"patching_rect" : [ 262.799988, 405.600006, 23.799988, 23.0 ],
				"id" : "obj-34",
				"parameter_enable" : 1,
				"outlettype" : [ "" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.toggle",
						"parameter_shortname" : "live.toggle",
						"parameter_type" : 2,
						"parameter_mmax" : 1.0,
						"parameter_enum" : [ "off", "on" ]
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "route 61 62",
				"numinlets" : 3,
				"numoutlets" : 3,
				"patching_rect" : [ 262.799988, 361.599976, 71.0, 22.0 ],
				"id" : "obj-33",
				"outlettype" : [ "", "", "" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "notein",
				"numinlets" : 1,
				"numoutlets" : 3,
				"patching_rect" : [ 262.799988, 293.200012, 43.0, 22.0 ],
				"id" : "obj-29",
				"outlettype" : [ "int", "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Fader inputs",
				"numinlets" : 1,
				"numoutlets" : 0,
				"patching_rect" : [ 52.0, 261.200012, 150.0, 20.0 ],
				"id" : "obj-24",
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[9]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 110.0, 344.200012, 39.0, 95.0 ],
				"id" : "obj-20",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[9]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 11",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 110.0, 293.200012, 48.0, 22.0 ],
				"id" : "obj-21",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[10]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 52.0, 344.200012, 39.0, 95.0 ],
				"id" : "obj-22",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[10]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 10",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 52.0, 293.200012, 49.0, 22.0 ],
				"id" : "obj-23",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "comment",
				"text" : "Analog inputs",
				"numinlets" : 1,
				"numoutlets" : 0,
				"patching_rect" : [ 59.0, 33.0, 150.0, 20.0 ],
				"id" : "obj-19",
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[1]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 470.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-16",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[1]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 19",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 470.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-17",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[2]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 409.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-14",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[2]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 18",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 409.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-15",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[3]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 346.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-12",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[3]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 17",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 346.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-13",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[4]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 288.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-10",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[4]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 16",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 288.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-11",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[5]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 232.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-8",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[5]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 15",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 232.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-9",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[6]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 175.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-6",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[6]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 14",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 175.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-7",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[7]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 117.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-4",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[7]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 13",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 117.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-5",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
, 		{
			"box" : 			{
				"maxclass" : "live.slider",
				"varname" : "live.slider[8]",
				"numinlets" : 1,
				"showname" : 0,
				"numoutlets" : 2,
				"patching_rect" : [ 59.0, 118.0, 39.0, 95.0 ],
				"id" : "obj-2",
				"parameter_enable" : 1,
				"outlettype" : [ "", "float" ],
				"saved_attribute_attributes" : 				{
					"valueof" : 					{
						"parameter_longname" : "live.slider[8]",
						"parameter_shortname" : "live.slider",
						"parameter_type" : 0,
						"parameter_unitstyle" : 0
					}

				}

			}

		}
, 		{
			"box" : 			{
				"maxclass" : "newobj",
				"text" : "ctlin 12",
				"numinlets" : 1,
				"numoutlets" : 2,
				"patching_rect" : [ 59.0, 67.0, 49.0, 22.0 ],
				"id" : "obj-1",
				"outlettype" : [ "int", "int" ],
				"style" : ""
			}

		}
 ],
	"lines" : [ 		{
			"patchline" : 			{
				"source" : [ "obj-33", 1 ],
				"destination" : [ "obj-35", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-33", 0 ],
				"destination" : [ "obj-34", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-38", 0 ],
				"destination" : [ "obj-33", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 0 ],
				"destination" : [ "obj-38", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-29", 1 ],
				"destination" : [ "obj-38", 1 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-23", 0 ],
				"destination" : [ "obj-22", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-21", 0 ],
				"destination" : [ "obj-20", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-1", 0 ],
				"destination" : [ "obj-2", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-5", 0 ],
				"destination" : [ "obj-4", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-7", 0 ],
				"destination" : [ "obj-6", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-9", 0 ],
				"destination" : [ "obj-8", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-11", 0 ],
				"destination" : [ "obj-10", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-13", 0 ],
				"destination" : [ "obj-12", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-15", 0 ],
				"destination" : [ "obj-14", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
, 		{
			"patchline" : 			{
				"source" : [ "obj-17", 0 ],
				"destination" : [ "obj-16", 0 ],
				"hidden" : 0,
				"disabled" : 0
			}

		}
 ],
	"appversion" : 	{
		"major" : 7,
		"minor" : 3,
		"revision" : 3,
		"architecture" : "x86",
		"modernui" : 1
	}

}
