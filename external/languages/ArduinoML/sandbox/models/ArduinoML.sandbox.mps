<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a7de18b7-61d4-4f5f-bfef-121673a859b4(ArduinoML.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="1109dc8c-11e3-4a8b-99a4-0920dc512ac2" name="ArduinoML">
      <concept id="9151366845409483137" name="ArduinoML.structure.Task" flags="ng" index="2iURoD">
        <property id="4125365922010097763" name="period" index="3kEtoh" />
        <child id="9151366845409483140" name="states" index="2iURoG" />
      </concept>
      <concept id="8979439463483866759" name="ArduinoML.structure.IActionLCD" flags="ng" index="2jyhSq">
        <property id="8979439463483866763" name="rowToDisplay" index="2jyhSm" />
        <reference id="8979439463483866766" name="target" index="2jyhSj" />
      </concept>
      <concept id="6960558460116088515" name="ArduinoML.structure.App" flags="ng" index="l5YB9">
        <child id="9151366845409483145" name="tasks" index="2iURox" />
        <child id="2141626661100871349" name="bricks" index="3_PcyG" />
      </concept>
      <concept id="6960558460116088517" name="ArduinoML.structure.ActuatorDigital" flags="ng" index="l5YBf" />
      <concept id="6960558460116088530" name="ArduinoML.structure.State" flags="ng" index="l5YBo">
        <child id="6960558460116088532" name="actions" index="l5YBu" />
        <child id="5766921242181707679" name="transitions" index="3BVhZf" />
      </concept>
      <concept id="6960558460117763511" name="ArduinoML.structure.SensorDigital" flags="ng" index="lc1EX" />
      <concept id="6960558460117854866" name="ArduinoML.structure.SensorAnalog" flags="ng" index="lcJmo" />
      <concept id="7393137989689907941" name="ArduinoML.structure.IBrickBus" flags="ng" index="2$s2$L">
        <property id="7393137989689920449" name="bus" index="2$s7wl" />
      </concept>
      <concept id="7393137989689907938" name="ArduinoML.structure.IBrickPin" flags="ng" index="2$s2$Q">
        <property id="936800808369643093" name="pin" index="XaZ4a" />
      </concept>
      <concept id="3159270251226733178" name="ArduinoML.structure.TransitionTime" flags="ng" index="U0Y7O">
        <property id="3159270251226733181" name="timeBeforeTransition" index="U0Y7N" />
      </concept>
      <concept id="936800808369330535" name="ArduinoML.structure.ActionLCDDigitalReaderText" flags="ng" index="X9NoS">
        <reference id="936800808369330546" name="brick" index="X9NoH" />
      </concept>
      <concept id="936800808369330532" name="ArduinoML.structure.ActionLCDAnalogReaderText" flags="ng" index="X9NoV">
        <reference id="8979439463482588090" name="brick" index="2jBpGB" />
      </concept>
      <concept id="7811193151328060464" name="ArduinoML.structure.StateError" flags="ng" index="1cImFT">
        <property id="7811193151328060467" name="code" index="1cImFU" />
      </concept>
      <concept id="7811193151327754314" name="ArduinoML.structure.IState" flags="ng" index="1cJ3q3">
        <property id="7811193151327754319" name="isInitial" index="1cJ3q6" />
      </concept>
      <concept id="6091910209283437144" name="ArduinoML.structure.LCD" flags="ng" index="1foe9n">
        <property id="5766921242179458249" name="rows" index="3BMIMp" />
        <property id="5766921242179458252" name="columns" index="3BMIMs" />
      </concept>
      <concept id="5766921242180068163" name="ArduinoML.structure.ActionDigital" flags="ng" index="3BL1Gj">
        <property id="5766921242180082541" name="signal" index="3BL6cX" />
        <reference id="5766921242180082543" name="target" index="3BL6cZ" />
      </concept>
      <concept id="5766921242181908858" name="ArduinoML.structure.ConditionDigital" flags="ng" index="3BS04E">
        <property id="5766921242181908863" name="signal" index="3BS04J" />
        <reference id="5766921242181908865" name="sensor" index="3BS07h" />
      </concept>
      <concept id="5766921242181710566" name="ArduinoML.structure.ITransition" flags="ng" index="3BVgEQ">
        <reference id="3159270251226430145" name="state" index="U685f" />
      </concept>
      <concept id="5766921242181710567" name="ArduinoML.structure.Transition" flags="ng" index="3BVgER">
        <child id="5766921242181942006" name="conditions" index="3BS8aA" />
      </concept>
      <concept id="5766921242181886178" name="ArduinoML.structure.ConditionAnalog" flags="ng" index="3BVXyM">
        <property id="5766921242181891028" name="comparator" index="3BVWI4" />
        <property id="5766921242181891078" name="value" index="3BVWLm" />
        <reference id="5766921242181886181" name="sensor" index="3BVXyP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="l5YB9" id="62oRKDP$6Yq">
    <property role="TrG5h" value="LCD Screen Demo State" />
    <node concept="2iURoD" id="3_0fBbI95eM" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95fa" role="2iURoG">
        <property role="TrG5h" value="off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95fb" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95eQ" resolve="on" />
          <node concept="3BS04E" id="3_0fBbI95fc" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAc6" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="7QYskAWfAcB" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAbP" resolve="led" />
        </node>
        <node concept="X9NoS" id="3_0fBbI95fe" role="l5YBu">
          <property role="2jyhSm" value="0" />
          <ref role="X9NoH" node="7QYskAWfAbP" resolve="led" />
          <ref role="2jyhSj" node="7QYskAWfAcn" resolve="lcd" />
        </node>
        <node concept="X9NoV" id="3_0fBbI95ff" role="l5YBu">
          <property role="2jyhSm" value="1" />
          <ref role="2jyhSj" node="7QYskAWfAcn" resolve="lcd" />
          <ref role="2jBpGB" node="7QYskAWfAbo" resolve="light" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95eQ" role="2iURoG">
        <property role="TrG5h" value="on" />
        <node concept="3BVgER" id="3_0fBbI95eR" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95fa" resolve="off" />
          <node concept="3BS04E" id="3_0fBbI95eS" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAc6" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95eT" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAbP" resolve="led" />
        </node>
        <node concept="X9NoS" id="3_0fBbI95eU" role="l5YBu">
          <property role="2jyhSm" value="0" />
          <ref role="X9NoH" node="7QYskAWfAbP" resolve="led" />
          <ref role="2jyhSj" node="7QYskAWfAcn" resolve="lcd" />
        </node>
        <node concept="X9NoV" id="3_0fBbI95eV" role="l5YBu">
          <property role="2jyhSm" value="1" />
          <ref role="2jBpGB" node="7QYskAWfAbo" resolve="light" />
          <ref role="2jyhSj" node="7QYskAWfAcn" resolve="lcd" />
        </node>
      </node>
    </node>
    <node concept="lcJmo" id="7QYskAWfAbo" role="3_PcyG">
      <property role="TrG5h" value="light" />
      <property role="XaZ4a" value="1" />
    </node>
    <node concept="l5YBf" id="7QYskAWfAbP" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAc6" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="2" />
    </node>
    <node concept="1foe9n" id="7QYskAWfAcn" role="3_PcyG">
      <property role="TrG5h" value="lcd" />
      <property role="3BMIMs" value="16" />
      <property role="3BMIMp" value="2" />
      <property role="2$s7wl" value="2" />
    </node>
  </node>
  <node concept="l5YB9" id="508e52RTJyd">
    <property role="TrG5h" value="Very simple alarm" />
    <node concept="2iURoD" id="3_0fBbI95mv" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95mO" role="2iURoG">
        <property role="TrG5h" value="off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95mP" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95mz" resolve="on" />
          <node concept="3BS04E" id="3_0fBbI95mQ" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAgi" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95mR" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAgh" resolve="led" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95mS" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAgr" resolve="buzzer" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95mz" role="2iURoG">
        <property role="TrG5h" value="on" />
        <node concept="3BVgER" id="3_0fBbI95m$" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95mO" resolve="off" />
          <node concept="3BS04E" id="3_0fBbI95m_" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAgi" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95mA" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAgh" resolve="led" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95mB" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAgr" resolve="buzzer" />
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAgh" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAgi" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="l5YBf" id="7QYskAWfAgr" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="10" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK43Qu">
    <property role="TrG5h" value="Dual-check alarm" />
    <node concept="2iURoD" id="3_0fBbI95bx" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95bC" role="2iURoG">
        <property role="TrG5h" value="alarm_off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BL1Gj" id="3_0fBbI95bD" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfA8D" resolve="buzzer" />
        </node>
        <node concept="3BVgER" id="3_0fBbI95bE" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95bN" resolve="alarm_on" />
          <node concept="3BS04E" id="3_0fBbI95bF" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA90" resolve="btn1" />
          </node>
          <node concept="3BS04E" id="7QYskAWoCTf" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA90" resolve="btn1" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95bN" role="2iURoG">
        <property role="TrG5h" value="alarm_on" />
        <node concept="3BVgER" id="3_0fBbI95bO" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95bC" resolve="alarm_off" />
          <node concept="3BS04E" id="3_0fBbI95bP" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfA90" resolve="btn1" />
          </node>
        </node>
        <node concept="3BVgER" id="3_0fBbI95bQ" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95bC" resolve="alarm_off" />
          <node concept="3BS04E" id="3_0fBbI95bR" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfA97" resolve="btn2" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95bS" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfA8D" resolve="buzzer" />
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfA8D" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfA90" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="7QYskAWfA97" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="10" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$cu">
    <property role="TrG5h" value="State-based alarm" />
    <node concept="2iURoD" id="3_0fBbI95j8" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95k4" role="2iURoG">
        <property role="TrG5h" value="off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95k5" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95jF" resolve="on_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95k6" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAfY" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95k7" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAfM" resolve="led" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95jF" role="2iURoG">
        <property role="TrG5h" value="on_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95jG" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95jn" resolve="on" />
          <node concept="3BS04E" id="3_0fBbI95jH" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAfY" resolve="button" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95jn" role="2iURoG">
        <property role="TrG5h" value="on" />
        <node concept="3BVgER" id="3_0fBbI95jo" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95jc" resolve="off_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95jp" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAfY" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95jq" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAfM" resolve="led" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95jc" role="2iURoG">
        <property role="TrG5h" value="off_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95jd" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95k4" resolve="off" />
          <node concept="3BS04E" id="3_0fBbI95je" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAfY" resolve="button" />
          </node>
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAfM" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAfY" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
  </node>
  <node concept="l5YB9" id="O0bPWK9$dS">
    <property role="TrG5h" value="Multi-state Alarm" />
    <node concept="2iURoD" id="3_0fBbI95fy" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95hK" role="2iURoG">
        <property role="TrG5h" value="alarm_off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95hL" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95h7" resolve="alarm_s1_intermediary" />
          <node concept="3BS04E" id="7QYskAWfAep" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="BUTTON" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95hN" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAdL" resolve="led" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95hO" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAdX" resolve="buzzer" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95h7" role="2iURoG">
        <property role="TrG5h" value="alarm_s1_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95h8" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95gz" resolve="alarm_s1" />
          <node concept="3BS04E" id="3_0fBbI95h9" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="button" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95gz" role="2iURoG">
        <property role="TrG5h" value="alarm_s1" />
        <node concept="3BVgER" id="3_0fBbI95g$" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95g8" resolve="alarm_s2_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95g_" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95gA" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAdX" resolve="buzzer" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95g8" role="2iURoG">
        <property role="TrG5h" value="alarm_s2_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95g9" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95fL" resolve="alarm_s2" />
          <node concept="3BS04E" id="3_0fBbI95ga" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="button" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95fL" role="2iURoG">
        <property role="TrG5h" value="alarm_s2" />
        <node concept="3BVgER" id="3_0fBbI95fM" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95fA" resolve="alarm_off_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95fN" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95fO" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAdL" resolve="led" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95fP" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAdX" resolve="buzzer" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95fA" role="2iURoG">
        <property role="TrG5h" value="alarm_off_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95fB" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95hK" resolve="alarm_off" />
          <node concept="3BS04E" id="3_0fBbI95fC" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAeb" resolve="button" />
          </node>
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAdL" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="l5YBf" id="7QYskAWfAdX" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAeb" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="10" />
    </node>
  </node>
  <node concept="l5YB9" id="7Mto9RJ2Yvf">
    <property role="TrG5h" value="LCD Screen Demo Alarm" />
    <node concept="2iURoD" id="3_0fBbI95e2" role="2iURox">
      <property role="TrG5h" value="progam" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95eq" role="2iURoG">
        <property role="TrG5h" value="off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95er" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95e6" resolve="on" />
          <node concept="3BVXyM" id="3_0fBbI95es" role="3BS8aA">
            <property role="3BVWI4" value="&lt;" />
            <property role="3BVWLm" value="30" />
            <ref role="3BVXyP" node="7QYskAWfAhj" resolve="light" />
          </node>
        </node>
        <node concept="3BL1Gj" id="7QYskAWfAa2" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfA9I" resolve="led" />
        </node>
        <node concept="X9NoV" id="3_0fBbI95eu" role="l5YBu">
          <property role="2jyhSm" value="1" />
          <ref role="2jyhSj" node="7QYskAWfA9o" resolve="lcd" />
          <ref role="2jBpGB" node="7QYskAWfAhj" resolve="light" />
        </node>
        <node concept="X9NoS" id="7QYskAWfAa$" role="l5YBu">
          <property role="2jyhSm" value="0" />
          <ref role="X9NoH" node="7QYskAWfA9I" resolve="led" />
          <ref role="2jyhSj" node="7QYskAWfA9o" resolve="lcd" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95e6" role="2iURoG">
        <property role="TrG5h" value="on" />
        <node concept="3BVgER" id="3_0fBbI95e7" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95eq" resolve="off" />
          <node concept="3BVXyM" id="3_0fBbI95e8" role="3BS8aA">
            <property role="3BVWI4" value="&gt;=" />
            <property role="3BVWLm" value="40" />
            <ref role="3BVXyP" node="7QYskAWfAhj" resolve="light" />
          </node>
        </node>
        <node concept="3BL1Gj" id="7QYskAWfAb9" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfA9I" resolve="led" />
        </node>
        <node concept="X9NoS" id="3_0fBbI95ea" role="l5YBu">
          <property role="2jyhSm" value="0" />
          <ref role="X9NoH" node="7QYskAWfA9I" resolve="led" />
          <ref role="2jyhSj" node="7QYskAWfA9o" resolve="lcd" />
        </node>
        <node concept="X9NoV" id="3_0fBbI95eb" role="l5YBu">
          <property role="2jyhSm" value="1" />
          <ref role="2jyhSj" node="7QYskAWfA9o" resolve="lcd" />
          <ref role="2jBpGB" node="7QYskAWfAhj" resolve="light" />
        </node>
      </node>
    </node>
    <node concept="lcJmo" id="7QYskAWfAhj" role="3_PcyG">
      <property role="TrG5h" value="light" />
      <property role="XaZ4a" value="1" />
    </node>
    <node concept="l5YBf" id="7QYskAWfA9I" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="1foe9n" id="7QYskAWfA9o" role="3_PcyG">
      <property role="TrG5h" value="lcd" />
      <property role="3BMIMs" value="16" />
      <property role="3BMIMp" value="2" />
      <property role="2$s7wl" value="2" />
    </node>
  </node>
  <node concept="l5YB9" id="6LAVG$wSi2U">
    <property role="TrG5h" value="Exception Throwing" />
    <node concept="l5YBf" id="7QYskAWfA9e" role="3_PcyG">
      <property role="TrG5h" value="buzzer" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfA9f" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="7QYskAWfA9g" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="10" />
    </node>
    <node concept="2iURoD" id="3_0fBbI95cl" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95dd" role="2iURoG">
        <property role="TrG5h" value="alarm_off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95de" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95cL" resolve="alarm_on" />
          <node concept="3BS04E" id="3_0fBbI95df" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9f" resolve="btn1" />
          </node>
        </node>
        <node concept="3BVgER" id="3_0fBbI95dg" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95cL" resolve="alarm_on" />
          <node concept="3BS04E" id="3_0fBbI95dh" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9g" resolve="btn2" />
          </node>
        </node>
        <node concept="3BVgER" id="3_0fBbI95di" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95cG" resolve="double_door_error" />
          <node concept="3BS04E" id="3_0fBbI95dj" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9f" resolve="btn1" />
          </node>
          <node concept="3BS04E" id="3_0fBbI95dk" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9g" resolve="btn2" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95dl" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfA9e" resolve="buzzer" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95cL" role="2iURoG">
        <property role="TrG5h" value="alarm_on" />
        <node concept="3BVgER" id="3_0fBbI95cM" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95dd" resolve="alarm_off" />
          <node concept="3BS04E" id="3_0fBbI95cN" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfA9f" resolve="btn1" />
          </node>
          <node concept="3BS04E" id="3_0fBbI95cO" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfA9g" resolve="btn2" />
          </node>
        </node>
        <node concept="3BVgER" id="3_0fBbI95cP" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95cG" resolve="double_door_error" />
          <node concept="3BS04E" id="3_0fBbI95cQ" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9f" resolve="btn1" />
          </node>
          <node concept="3BS04E" id="3_0fBbI95cR" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfA9g" resolve="btn2" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95cS" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfA9e" resolve="buzzer" />
        </node>
      </node>
      <node concept="1cImFT" id="3_0fBbI95cG" role="2iURoG">
        <property role="TrG5h" value="double_door_error" />
        <property role="1cImFU" value="3" />
      </node>
    </node>
  </node>
  <node concept="l5YB9" id="2JnYSShQqa2">
    <property role="TrG5h" value="Temporal transition Demo State" />
    <node concept="2iURoD" id="3_0fBbI95kG" role="2iURox">
      <property role="TrG5h" value="program" />
      <property role="3kEtoh" value="1" />
      <node concept="l5YBo" id="3_0fBbI95lO" role="2iURoG">
        <property role="TrG5h" value="off" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbI95lP" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95ln" resolve="on_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95lQ" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAgb" resolve="button" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95lR" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAga" resolve="led" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95ln" role="2iURoG">
        <property role="TrG5h" value="on_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95lo" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95kY" resolve="on" />
          <node concept="3BS04E" id="3_0fBbI95lp" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAgb" resolve="button" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95kY" role="2iURoG">
        <property role="TrG5h" value="on" />
        <node concept="3BVgER" id="3_0fBbI95kZ" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95kK" resolve="off_intermediary" />
          <node concept="3BS04E" id="3_0fBbI95l0" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAgb" resolve="button" />
          </node>
        </node>
        <node concept="U0Y7O" id="3_0fBbI95l1" role="3BVhZf">
          <property role="U0Y7N" value="800" />
          <ref role="U685f" node="3_0fBbI95lO" resolve="off" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95l2" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAga" resolve="led" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95kK" role="2iURoG">
        <property role="TrG5h" value="off_intermediary" />
        <node concept="3BVgER" id="3_0fBbI95kL" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95lO" resolve="off" />
          <node concept="3BS04E" id="3_0fBbI95kM" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAgb" resolve="button" />
          </node>
        </node>
        <node concept="U0Y7O" id="3_0fBbI95kN" role="3BVhZf">
          <property role="U0Y7N" value="800" />
          <ref role="U685f" node="3_0fBbI95lO" resolve="off" />
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAga" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAgb" role="3_PcyG">
      <property role="TrG5h" value="button" />
      <property role="XaZ4a" value="9" />
    </node>
  </node>
  <node concept="l5YB9" id="33vNQE8QBR3">
    <property role="TrG5h" value="Parallel Program Demo" />
    <node concept="2iURoD" id="3_0fBbHRjrX" role="2iURox">
      <property role="TrG5h" value="program1" />
      <property role="3kEtoh" value="500" />
      <node concept="l5YBo" id="3_0fBbHRKpM" role="2iURoG">
        <property role="TrG5h" value="stateOff" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="3_0fBbHRV3t" role="3BVhZf">
          <ref role="U685f" node="3_0fBbHRRTv" resolve="stateOn" />
          <node concept="3BS04E" id="3_0fBbHRV3A" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAf4" resolve="btn1" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbHRRTH" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAeF" resolve="led1" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbHRRTv" role="2iURoG">
        <property role="TrG5h" value="stateOn" />
        <node concept="3BVgER" id="3_0fBbHRV3K" role="3BVhZf">
          <ref role="U685f" node="3_0fBbHRKpM" resolve="stateOff" />
          <node concept="3BS04E" id="3_0fBbHRV3P" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAf4" resolve="btn1" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbHRV3F" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAeF" resolve="led1" />
        </node>
      </node>
    </node>
    <node concept="2iURoD" id="3_0fBbHRV3S" role="2iURox">
      <property role="TrG5h" value="program2" />
      <property role="3kEtoh" value="50" />
      <node concept="l5YBo" id="3_0fBbHRV45" role="2iURoG">
        <property role="TrG5h" value="stateOff2" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BL1Gj" id="3_0fBbHUuwE" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAeN" resolve="led2" />
        </node>
        <node concept="3BVgER" id="3_0fBbHUuwX" role="3BVhZf">
          <ref role="U685f" node="3_0fBbHUuwL" resolve="stateOn2" />
          <node concept="3BS04E" id="3_0fBbHUux6" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAfe" resolve="btn2" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbHUuwL" role="2iURoG">
        <property role="TrG5h" value="stateOn2" />
        <node concept="3BVgER" id="3_0fBbHUuxb" role="3BVhZf">
          <ref role="U685f" node="3_0fBbHRV45" resolve="stateOff2" />
          <node concept="3BS04E" id="3_0fBbHUuxg" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAfe" resolve="btn2" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbHUuwS" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAeN" resolve="led2" />
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAeF" role="3_PcyG">
      <property role="TrG5h" value="led1" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="l5YBf" id="7QYskAWfAeN" role="3_PcyG">
      <property role="TrG5h" value="led2" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAf4" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="10" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAfe" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="11" />
    </node>
  </node>
  <node concept="l5YB9" id="3_0fBbI95b2">
    <property role="TrG5h" value="Parallel Program With Time Transition" />
    <node concept="2iURoD" id="3_0fBbI95b3" role="2iURox">
      <property role="TrG5h" value="program1" />
      <property role="3kEtoh" value="500" />
      <node concept="l5YBo" id="3_0fBbI95b4" role="2iURoG">
        <property role="TrG5h" value="stateOff" />
        <property role="1cJ3q6" value="true" />
        <node concept="U0Y7O" id="3_0fBbI95b7" role="3BVhZf">
          <property role="U0Y7N" value="1000" />
          <ref role="U685f" node="3_0fBbI95b9" resolve="stateOn" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95b8" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAfx" resolve="led1" />
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95b9" role="2iURoG">
        <property role="TrG5h" value="stateOn" />
        <node concept="U0Y7O" id="3_0fBbI95bc" role="3BVhZf">
          <property role="U0Y7N" value="1000" />
          <ref role="U685f" node="3_0fBbI95b4" resolve="stateOff" />
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95bd" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAfx" resolve="led1" />
        </node>
      </node>
    </node>
    <node concept="2iURoD" id="3_0fBbI95be" role="2iURox">
      <property role="TrG5h" value="program2" />
      <property role="3kEtoh" value="50" />
      <node concept="l5YBo" id="3_0fBbI95bf" role="2iURoG">
        <property role="TrG5h" value="stateOff2" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BL1Gj" id="3_0fBbI95bg" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="7QYskAWfAfy" resolve="led2" />
        </node>
        <node concept="3BVgER" id="3_0fBbI95bh" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95bj" resolve="stateOn2" />
          <node concept="3BS04E" id="3_0fBbI95bi" role="3BS8aA">
            <ref role="3BS07h" node="7QYskAWfAf$" resolve="btn2" />
          </node>
        </node>
      </node>
      <node concept="l5YBo" id="3_0fBbI95bj" role="2iURoG">
        <property role="TrG5h" value="stateOn2" />
        <node concept="3BVgER" id="3_0fBbI95bk" role="3BVhZf">
          <ref role="U685f" node="3_0fBbI95bf" resolve="stateOff2" />
          <node concept="3BS04E" id="3_0fBbI95bl" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="7QYskAWfAf$" resolve="btn2" />
          </node>
        </node>
        <node concept="3BL1Gj" id="3_0fBbI95bm" role="l5YBu">
          <ref role="3BL6cZ" node="7QYskAWfAfy" resolve="led2" />
        </node>
      </node>
    </node>
    <node concept="l5YBf" id="7QYskAWfAfx" role="3_PcyG">
      <property role="TrG5h" value="led1" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="l5YBf" id="7QYskAWfAfy" role="3_PcyG">
      <property role="TrG5h" value="led2" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAfz" role="3_PcyG">
      <property role="TrG5h" value="btn1" />
      <property role="XaZ4a" value="10" />
    </node>
    <node concept="lc1EX" id="7QYskAWfAf$" role="3_PcyG">
      <property role="TrG5h" value="btn2" />
      <property role="XaZ4a" value="11" />
    </node>
  </node>
  <node concept="l5YB9" id="5YNRb5VV094">
    <property role="TrG5h" value="Parallel Program With Error &amp; Analog" />
    <node concept="2iURoD" id="5YNRb5VV095" role="2iURox">
      <property role="TrG5h" value="program1" />
      <property role="3kEtoh" value="500" />
      <node concept="l5YBo" id="5YNRb5VV096" role="2iURoG">
        <property role="TrG5h" value="stateOff" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="5YNRb5VV097" role="3BVhZf">
          <ref role="U685f" node="5YNRb5VV09a" resolve="stateOn" />
          <node concept="3BS04E" id="5YNRb5VV098" role="3BS8aA">
            <ref role="3BS07h" node="5YNRb5VV09p" resolve="btn1" />
          </node>
        </node>
        <node concept="3BL1Gj" id="5YNRb5VV099" role="l5YBu">
          <property role="3BL6cX" value="62oRKDPzNre/LOW" />
          <ref role="3BL6cZ" node="5YNRb5VV09n" resolve="led1" />
        </node>
      </node>
      <node concept="l5YBo" id="5YNRb5VV09a" role="2iURoG">
        <property role="TrG5h" value="stateOn" />
        <node concept="3BVgER" id="5YNRb5VV09b" role="3BVhZf">
          <ref role="U685f" node="5YNRb5VV096" resolve="stateOff" />
          <node concept="3BS04E" id="5YNRb5VV09c" role="3BS8aA">
            <property role="3BS04J" value="62oRKDPzNre/LOW" />
            <ref role="3BS07h" node="5YNRb5VV09p" resolve="btn1" />
          </node>
        </node>
        <node concept="3BL1Gj" id="5YNRb5VV09d" role="l5YBu">
          <ref role="3BL6cZ" node="5YNRb5VV09n" resolve="led1" />
        </node>
      </node>
    </node>
    <node concept="2iURoD" id="5YNRb5VV09e" role="2iURox">
      <property role="TrG5h" value="programWithError" />
      <property role="3kEtoh" value="50" />
      <node concept="l5YBo" id="5YNRb5VV09f" role="2iURoG">
        <property role="TrG5h" value="stateOff2" />
        <property role="1cJ3q6" value="true" />
        <node concept="3BVgER" id="5YNRb5VV09M" role="3BVhZf">
          <ref role="U685f" node="5YNRb5VV0a$" resolve="errorState" />
          <node concept="3BVXyM" id="5YNRb5VV09V" role="3BS8aA">
            <property role="3BVWI4" value="&lt;" />
            <property role="3BVWLm" value="30" />
            <ref role="3BVXyP" node="5YNRb5VV09$" resolve="light" />
          </node>
        </node>
      </node>
      <node concept="1cImFT" id="5YNRb5VV0a$" role="2iURoG">
        <property role="TrG5h" value="errorState" />
        <property role="1cImFU" value="3" />
      </node>
    </node>
    <node concept="l5YBf" id="5YNRb5VV09n" role="3_PcyG">
      <property role="TrG5h" value="led" />
      <property role="XaZ4a" value="9" />
    </node>
    <node concept="lc1EX" id="5YNRb5VV09p" role="3_PcyG">
      <property role="TrG5h" value="btn" />
      <property role="XaZ4a" value="8" />
    </node>
    <node concept="lcJmo" id="5YNRb5VV09$" role="3_PcyG">
      <property role="TrG5h" value="light" />
      <property role="XaZ4a" value="1" />
    </node>
  </node>
</model>

