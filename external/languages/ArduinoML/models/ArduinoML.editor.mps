<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f7fcb582-3c06-4450-a87c-05061295bd4d(ArduinoML.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ge5j" ref="r:5bf5c70d-4c1e-4b5b-ac48-7f5374e997a2(ArduinoML.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="62oRKDP$7fo">
    <ref role="1XX52x" to="ge5j:62oRKDPzNr5" resolve="ActuatorDigital" />
    <node concept="3EZMnI" id="62oRKDP$7fq" role="2wV5jI">
      <node concept="2iRfu4" id="62oRKDP$7ft" role="2iSdaV" />
      <node concept="3EZMnI" id="62oRKDP$7fF" role="3EZMnx">
        <node concept="l2Vlx" id="62oRKDP$7fG" role="2iSdaV" />
        <node concept="VPM3Z" id="62oRKDP$7fH" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RNEJP" role="3EZMnx">
          <property role="3F0ifm" value="actuator digital:" />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hEh" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="62oRKDP$hEp" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hEs" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RMtqq" resolve="pin" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDP$hDF">
    <ref role="1XX52x" to="ge5j:62oRKDPzNr3" resolve="App" />
    <node concept="3EZMnI" id="62oRKDP$hDH" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDP$hDL" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hDN" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDP$hDW" role="3EZMnx">
          <property role="3F0ifm" value="application " />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hE1" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="l2Vlx" id="62oRKDP$hDQ" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="62oRKDP$t55" role="3EZMnx" />
      <node concept="3EZMnI" id="62oRKDP$hEy" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hE$" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hEL" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDP$hEO" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrq" resolve="actuators" />
          <node concept="2iRkQZ" id="62oRKDP$hER" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDP$hES" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDP$hEU" role="2czzBI">
            <property role="3F0ifm" value="[no actuators defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hEB" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="62oRKDPEpvn" role="3EZMnx" />
      <node concept="3EZMnI" id="62oRKDPEpwW" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDPEpwY" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDPEpxV" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDPEpy4" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPEl9P" resolve="sensors" />
          <node concept="2iRkQZ" id="62oRKDPEpy7" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDPEpy8" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDPEpyk" role="2czzBI">
            <property role="3F0ifm" value="[no sensors defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDPEpx1" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="508e52RKbto" role="3EZMnx" />
      <node concept="3EZMnI" id="508e52RKbuu" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RKbuw" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RKbva" role="3EZMnx" />
        <node concept="3F2HdR" id="508e52RKbvg" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RKbsH" resolve="lcd_screens" />
          <node concept="2iRkQZ" id="508e52RKbvj" role="2czzBx" />
          <node concept="VPM3Z" id="508e52RKbvk" role="3F10Kt" />
          <node concept="3F0ifn" id="508e52RKbvr" role="2czzBI">
            <property role="3F0ifm" value="[no LCD screens defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RKbuz" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="62oRKDP$t57" role="3EZMnx" />
      <node concept="3EZMnI" id="62oRKDP$hEY" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hF0" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hF9" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDP$hFc" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrp" resolve="states" />
          <node concept="2iRkQZ" id="62oRKDP$hFf" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDP$hFg" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDP$hFi" role="2czzBI">
            <property role="3F0ifm" value="[no states defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hF3" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="62oRKDP$hDK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDP$hFJ">
    <ref role="1XX52x" to="ge5j:62oRKDPzNri" resolve="State" />
    <node concept="3EZMnI" id="62oRKDP$hFL" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDP$hFP" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hFR" role="3F10Kt" />
        <node concept="3F0A7n" id="62oRKDP$hFW" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="62oRKDP$hFZ" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3XFhqQ" id="62oRKDP$hG2" role="3EZMnx" />
        <node concept="3XFhqQ" id="62oRKDP$hG9" role="3EZMnx" />
        <node concept="3XFhqQ" id="62oRKDP$hGc" role="3EZMnx" />
        <node concept="3F0ifn" id="62oRKDP$hGh" role="3EZMnx">
          <property role="3F0ifm" value="initial:" />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hGm" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDP$6Yy" resolve="isInitial" />
        </node>
        <node concept="l2Vlx" id="62oRKDP$hFU" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUUyD" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUUyF" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUUzn" role="3EZMnx" />
        <node concept="3F0ifn" id="508e52RUUzt" role="3EZMnx">
          <property role="3F0ifm" value="actions:" />
        </node>
        <node concept="l2Vlx" id="508e52RUUyI" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="62oRKDP$hGp" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hGr" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hGw" role="3EZMnx" />
        <node concept="3XFhqQ" id="508e52RVUQY" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDP$hGz" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrk" resolve="actions" />
          <node concept="2iRkQZ" id="62oRKDP$hGA" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDP$hGB" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDP$hGD" role="2czzBI">
            <property role="3F0ifm" value="[no actions defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hGu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUU$b" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUU$d" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUU$Y" role="3EZMnx" />
        <node concept="3F0ifn" id="508e52RUU_4" role="3EZMnx">
          <property role="3F0ifm" value="transitions:" />
        </node>
        <node concept="l2Vlx" id="508e52RUU$g" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="508e52RUDLr" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUDLt" role="3F10Kt" />
        <node concept="3XFhqQ" id="508e52RUDM1" role="3EZMnx" />
        <node concept="3XFhqQ" id="508e52RVURd" role="3EZMnx" />
        <node concept="3F2HdR" id="508e52RUDM7" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RTiuv" resolve="transitions" />
          <node concept="2iRkQZ" id="508e52RUDMa" role="2czzBx" />
          <node concept="VPM3Z" id="508e52RUDMb" role="3F10Kt" />
          <node concept="3F0ifn" id="508e52RUDMg" role="2czzBI">
            <property role="3F0ifm" value="[no transitions defined]" />
          </node>
        </node>
        <node concept="l2Vlx" id="508e52RUDLw" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="508e52RWjta" role="3EZMnx" />
      <node concept="2iRkQZ" id="62oRKDP$hFO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDPEcFA">
    <ref role="1XX52x" to="ge5j:62oRKDPEcmR" resolve="SensorDigital" />
    <node concept="3EZMnI" id="62oRKDPEcFC" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDPEcFM" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDPEcFO" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDPEcG5" role="3EZMnx">
          <property role="3F0ifm" value="digital sensor:" />
        </node>
        <node concept="3F0A7n" id="62oRKDPEcGE" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="62oRKDPEcGV" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="62oRKDPEcGe" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPEyEf" resolve="pin" />
        </node>
        <node concept="l2Vlx" id="62oRKDPEcFR" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="62oRKDPEcFF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDPEyEu">
    <ref role="1XX52x" to="ge5j:62oRKDPEyEi" resolve="SensorAnalog" />
    <node concept="3EZMnI" id="62oRKDPEyEw" role="2wV5jI">
      <node concept="3EZMnI" id="62oRKDPEyEE" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDPEyEG" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDPEyEX" role="3EZMnx">
          <property role="3F0ifm" value="analog sensor:" />
        </node>
        <node concept="3F0A7n" id="62oRKDPEyF6" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="62oRKDPEyFr" role="3EZMnx">
          <property role="3F0ifm" value="for pin" />
        </node>
        <node concept="3F0A7n" id="62oRKDPEyFG" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPEyEf" resolve="pin" />
        </node>
        <node concept="l2Vlx" id="62oRKDPEyEJ" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="62oRKDPEyEz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RJhgR">
    <ref role="1XX52x" to="ge5j:5iaO0WrUz9o" resolve="ActuatorLCD" />
    <node concept="3EZMnI" id="508e52RJhgT" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RJhh0" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RJhh2" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RJhhe" role="3EZMnx">
          <property role="3F0ifm" value="actuator LCD:" />
        </node>
        <node concept="3F0A7n" id="508e52RJhhk" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="508e52RKHjm" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="3F0A7n" id="508e52RKHj$" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RKHjc" resolve="columns" />
        </node>
        <node concept="3F0ifn" id="508e52RKHkz" role="3EZMnx">
          <property role="3F0ifm" value=" cols, " />
        </node>
        <node concept="3F0A7n" id="508e52RKHkf" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RKHj9" resolve="rows" />
        </node>
        <node concept="3F0ifn" id="508e52RKHkT" role="3EZMnx">
          <property role="3F0ifm" value=" rows)" />
        </node>
        <node concept="3F0ifn" id="508e52RJhhx" role="3EZMnx">
          <property role="3F0ifm" value="on bus" />
        </node>
        <node concept="3F0A7n" id="508e52RJhhF" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:5iaO0WrUz9u" resolve="bus" />
        </node>
        <node concept="l2Vlx" id="508e52RJhh5" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="508e52RJhgW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RN5HQ">
    <ref role="1XX52x" to="ge5j:508e52RN2d3" resolve="ActionDigital" />
    <node concept="3EZMnI" id="508e52RN5HS" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RN5Ia" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HJ" resolve="target" />
        <node concept="1sVBvm" id="508e52RN5Ic" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RN5Ij" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RN5Jx" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="508e52RN5JH" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HH" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="508e52RN5HV" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RN5JO">
    <ref role="1XX52x" to="ge5j:508e52RN5HL" resolve="ActionAnalog" />
    <node concept="3EZMnI" id="508e52RN5JQ" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RN5K8" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HO" resolve="target" />
        <node concept="1sVBvm" id="508e52RN5Ka" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RN5Kh" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RN5Kx" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="508e52RN5KH" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RN5HM" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="508e52RN5JT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RNEJo">
    <ref role="1XX52x" to="ge5j:508e52RMtqy" resolve="ActuatorAnalog" />
    <node concept="3EZMnI" id="508e52RNEJq" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RNEJx" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RNEJz" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RNEJJ" role="3EZMnx">
          <property role="3F0ifm" value="actuator analog:" />
        </node>
        <node concept="3F0A7n" id="508e52RNEJV" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="508e52RNEK8" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="508e52RNEKi" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RMtqq" resolve="pin" />
        </node>
        <node concept="l2Vlx" id="508e52RNEJA" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="508e52RNEJt" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RQ$PP">
    <ref role="1XX52x" to="ge5j:508e52RQ6xK" resolve="ActionLCD" />
    <node concept="3EZMnI" id="508e52RQ$PR" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RQ$PY" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RQ6xP" resolve="target" />
        <node concept="1sVBvm" id="508e52RQ$Q0" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RQ$Q7" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RQ$Ql" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="508e52RQ$Qx" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RQ6xN" resolve="text" />
      </node>
      <node concept="2iRfu4" id="508e52RQ$PU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RTjJO">
    <ref role="1XX52x" to="ge5j:508e52RTjJJ" resolve="ActionSleep" />
    <node concept="3EZMnI" id="508e52RTjJQ" role="2wV5jI">
      <node concept="3F0ifn" id="508e52RTjK0" role="3EZMnx">
        <property role="3F0ifm" value="time: " />
      </node>
      <node concept="3F0A7n" id="508e52RTjK6" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTjJM" resolve="time_ms" />
      </node>
      <node concept="3F0ifn" id="508e52RTjKe" role="3EZMnx">
        <property role="3F0ifm" value="ms" />
      </node>
      <node concept="2iRfu4" id="508e52RTjJT" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RTZfm">
    <ref role="1XX52x" to="ge5j:508e52RTY3y" resolve="ConditionAnalog" />
    <node concept="3EZMnI" id="508e52RTZfo" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RTZfv" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTY3_" resolve="sensor" />
        <node concept="1sVBvm" id="508e52RTZfx" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RTZfF" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="508e52RTZfr" role="2iSdaV" />
      <node concept="3F0A7n" id="508e52RTZfN" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTZfk" resolve="comparator" />
      </node>
      <node concept="3F0A7n" id="508e52RU3A3" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RTZg6" resolve="value" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="508e52RU3Aa">
    <ref role="1XX52x" to="ge5j:508e52RU3_U" resolve="ConditionDigital" />
    <node concept="3EZMnI" id="508e52RU3Ac" role="2wV5jI">
      <node concept="1iCGBv" id="508e52RU3Aj" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RU3A1" resolve="sensor" />
        <node concept="1sVBvm" id="508e52RU3Al" role="1sWHZn">
          <node concept="3F0A7n" id="508e52RU3As" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52RU3AE" role="3EZMnx">
        <property role="3F0ifm" value="==" />
      </node>
      <node concept="3F0A7n" id="508e52RU3AQ" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52RU3_Z" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="508e52RU3Af" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52RUbFU">
    <ref role="1XX52x" to="ge5j:508e52RTjbB" resolve="Transition" />
    <node concept="3EZMnI" id="508e52RUbGp" role="2wV5jI">
      <node concept="3EZMnI" id="508e52RUUBo" role="3EZMnx">
        <node concept="VPM3Z" id="508e52RUUBq" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52RUUBB" role="3EZMnx">
          <property role="3F0ifm" value="to" />
        </node>
        <node concept="1iCGBv" id="508e52RUUBL" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RUUwN" resolve="state" />
          <node concept="1sVBvm" id="508e52RUUBN" role="1sWHZn">
            <node concept="3F0A7n" id="508e52RUUBV" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="508e52RUUBt" role="2iSdaV" />
        <node concept="3F0ifn" id="508e52RVsdt" role="3EZMnx">
          <property role="3F0ifm" value="if" />
        </node>
        <node concept="3F2HdR" id="508e52RVsex" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:508e52RUbFQ" resolve="conditions" />
          <node concept="2iRkQZ" id="508e52RVse$" role="2czzBx" />
          <node concept="VPM3Z" id="508e52RVse_" role="3F10Kt" />
          <node concept="3F0ifn" id="508e52RVseI" role="2czzBI">
            <property role="3F0ifm" value="[no conditions defined]" />
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="508e52RUUB1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52S08mj">
    <ref role="1XX52x" to="ge5j:508e52S08mg" resolve="SensorButtonDigital" />
    <node concept="3EZMnI" id="508e52S08ml" role="2wV5jI">
      <node concept="3EZMnI" id="508e52S08ms" role="3EZMnx">
        <node concept="VPM3Z" id="508e52S08mu" role="3F10Kt" />
        <node concept="3F0ifn" id="508e52S08mE" role="3EZMnx">
          <property role="3F0ifm" value="digital button:" />
        </node>
        <node concept="3F0A7n" id="508e52S08mK" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="508e52S08mX" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="508e52S08n7" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPEyEf" resolve="pin" />
        </node>
        <node concept="l2Vlx" id="508e52S08mx" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="508e52S08mo" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="508e52S0CVe">
    <ref role="1XX52x" to="ge5j:508e52S0CVd" resolve="ConditionDigitalButton" />
    <node concept="3EZMnI" id="508e52S0CVy" role="2wV5jI">
      <node concept="1iCGBv" id="508e52S0CVz" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52S2E4A" resolve="sensor" />
        <node concept="1sVBvm" id="508e52S0CV$" role="1sWHZn">
          <node concept="3F0A7n" id="508e52S0CV_" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="508e52S0CVA" role="3EZMnx">
        <property role="3F0ifm" value="==" />
      </node>
      <node concept="3F0A7n" id="508e52S0CVB" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:508e52S2E4$" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="508e52S0CVC" role="2iSdaV" />
    </node>
  </node>
</model>
