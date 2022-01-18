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
    <ref role="1XX52x" to="ge5j:62oRKDPzNr5" resolve="Actuator" />
    <node concept="3EZMnI" id="62oRKDP$7fq" role="2wV5jI">
      <node concept="2iRfu4" id="62oRKDP$7ft" role="2iSdaV" />
      <node concept="3EZMnI" id="62oRKDP$7fF" role="3EZMnx">
        <node concept="l2Vlx" id="62oRKDP$7fG" role="2iSdaV" />
        <node concept="VPM3Z" id="62oRKDP$7fH" role="3F10Kt" />
        <node concept="3F0ifn" id="62oRKDP$hEd" role="3EZMnx">
          <property role="3F0ifm" value="actuator:" />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hEh" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="62oRKDP$hEp" role="3EZMnx">
          <property role="3F0ifm" value="on pin" />
        </node>
        <node concept="3F0A7n" id="62oRKDP$hEs" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNr7" resolve="pin" />
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
            <property role="3F0ifm" value="no actuators defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hEB" role="2iSdaV" />
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
            <property role="3F0ifm" value="no states defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hF3" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="62oRKDP$hDK" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="62oRKDP$hFk">
    <ref role="1XX52x" to="ge5j:62oRKDPzNr8" resolve="Action" />
    <node concept="3EZMnI" id="62oRKDP$hFm" role="2wV5jI">
      <node concept="1iCGBv" id="62oRKDP$hFv" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:62oRKDPzNro" resolve="target" />
        <node concept="1sVBvm" id="62oRKDP$hFx" role="1sWHZn">
          <node concept="3F0A7n" id="62oRKDP$hF_" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="62oRKDP$hFE" role="3EZMnx">
        <property role="3F0ifm" value="&lt;=" />
      </node>
      <node concept="3F0A7n" id="62oRKDP$hFH" role="3EZMnx">
        <ref role="1NtTu8" to="ge5j:62oRKDPzNrn" resolve="signal" />
      </node>
      <node concept="2iRfu4" id="62oRKDP$hFp" role="2iSdaV" />
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
      <node concept="3EZMnI" id="62oRKDP$hGp" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hGr" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hGw" role="3EZMnx" />
        <node concept="3F2HdR" id="62oRKDP$hGz" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrk" resolve="actions" />
          <node concept="2iRkQZ" id="62oRKDP$hGA" role="2czzBx" />
          <node concept="VPM3Z" id="62oRKDP$hGB" role="3F10Kt" />
          <node concept="3F0ifn" id="62oRKDP$hGD" role="2czzBI">
            <property role="3F0ifm" value="no actions defined" />
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hGu" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="62oRKDP$hGI" role="3EZMnx">
        <node concept="VPM3Z" id="62oRKDP$hGK" role="3F10Kt" />
        <node concept="3XFhqQ" id="62oRKDP$hGT" role="3EZMnx" />
        <node concept="3F0ifn" id="62oRKDP$hH0" role="3EZMnx">
          <property role="3F0ifm" value="going to" />
        </node>
        <node concept="1iCGBv" id="62oRKDP$hH5" role="3EZMnx">
          <ref role="1NtTu8" to="ge5j:62oRKDPzNrl" resolve="next" />
          <node concept="1sVBvm" id="62oRKDP$hH7" role="1sWHZn">
            <node concept="3F0A7n" id="62oRKDP$hHb" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="l2Vlx" id="62oRKDP$hGN" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="62oRKDP$hHe" role="3EZMnx" />
      <node concept="2iRkQZ" id="62oRKDP$hFO" role="2iSdaV" />
    </node>
  </node>
</model>

