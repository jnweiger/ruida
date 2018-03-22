module Ruida
  class Cmd_e7 < Cmd
    def self.format
      { 0x00 => ["Stop"],
        0x01 => ["SetFilename", :string],
        0x03 => ["Bounding_Box_Top_Left", :abs, :abs],
        0x04 => ["E7 04", -4, :abs, :abs],
        0x05 => ["E7_05", -1],
        0x06 => ["Feeding", :abs, :abs], # Feeding1, Distance+Feeding2
        0x07 => ["Bounding_Box_Bottom_Right", :abs, :abs],
        0x08 => ["Bottom_Right_E7_08", -4, :abs, :abs],
        0x13 => ["E7 13", :abs, :abs],
        0x17 => ["Bottom_Right_E7_17", :abs, :abs],
        0x23 => ["E7 23", :abs, :abs],
        0x24 => ["E7 24", -1],
        0x50 => ["Bounding_Box_Top_Left", :abs, :abs],
        0x51 => ["Bounding_Box_Bottom_Right", :abs, :abs],
        0x52 => ["Layer_Top_Left_E7_52", :layer, :abs, :abs],
        0x53 => ["Layer_Bottom_Right_E7_53", :layer, :abs, :abs],
        0x54 => ["Pen_Draw_Y", :layer, :abs],
        0x55 => ["Laser_Y_Offset", :layer, :abs],
        0x60 => ["E7 60", -1],
        0x61 => ["Layer_Top_Left_E7_61", :layer, :abs, :abs],
        0x62 => ["Layer_Bottom_Right_E7_62", :layer, :abs, :abs]
      }
    end
  end
end
