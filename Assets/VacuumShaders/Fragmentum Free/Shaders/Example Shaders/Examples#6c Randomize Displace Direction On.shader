// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 218.7KB

Shader "VacuumShaders/Fragmentum/Examples/6c Randomize Displace Direction On" {
Properties {
[HideInInspector]  _Color ("", Color) = (1,1,1,1)
[HideInInspector]  _MainTex ("", 2D) = "white" {}
[HideInInspector]  V_FR_Fragmentum ("", Range(0,1)) = 0.5
[HideInInspector]  V_FR_DisplaceAmount ("", Float) = 1
[HideInInspector]  V_FR_RotateSpeed ("", Float) = 1
[HideInInspector]  V_FR_DisplaceDirectionObjectPosition ("", Vector) = (0,1,0,0)
[HideInInspector]  V_FR_FragmentsScale ("", Float) = 1
[HideInInspector]  V_FR_DistanceToActivator ("", Float) = 0
[HideInInspector]  V_FR_FragTexture ("", 2D) = "white" {}
[HideInInspector]  V_FR_FragTexturePower ("", Range(1,10)) = 1
[HideInInspector]  V_FR_RandomizeFragmentum ("", Float) = 0
[HideInInspector]  V_FR_RandomizeFragmentsScale ("", Float) = 0
[HideInInspector]  V_FR_RandomizeDistanceToActivator ("", Float) = 0
[HideInInspector]  V_FR_RandomizeInitialRotation ("", Float) = 0
[HideInInspector]  V_FR_RandomizeRotationSpeed ("", Float) = 0
[HideInInspector]  V_FR_RandomizeRotationTimeOffset ("", Float) = 0
[HideInInspector]  V_FR_RandomizeDisplaceDirection ("", Range(0,1)) = 0
[HideInInspector]  V_FR_RandomizeDisplaceAmount ("", Float) = 0
}
SubShader { 
 LOD 200
 Tags { "QUEUE"="Geometry" "RenderType"="Opaque" "FragmentumTag"="Fragmentum/SM2/One Directional Light/Diffuse" }


//Free V_FR_GLOBAL_CONTROL
//Free V_FR_RANDOMIZE_DISPLACE_DIRECTION

//DO NOT MODIFY !!! The End

 // Stats for Vertex shader:
 //       d3d11 : 18 avg math (9..28)
 //    d3d11_9x : 18 avg math (9..28)
 //        d3d9 : 25 avg math (10..40)
 //      opengl : 23 avg math (10..37)
 // Stats for Fragment shader:
 //       d3d11 : 6 avg math (3..13), 1 avg texture (1..2)
 //    d3d11_9x : 6 avg math (3..13), 1 avg texture (1..2)
 //        d3d9 : 8 avg math (5..15), 1 avg texture (1..2)
 //      opengl : 9 avg math (6..16), 1 avg texture (1..2)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "QUEUE"="Geometry" "RenderType"="Opaque" "FragmentumTag"="Fragmentum/SM2/One Directional Light/Diffuse" }
  Cull Off
Program "vp" {
SubProgram "opengl " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[12] = { program.local[0],
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 10 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
mul r0.xyz, v2, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedggnjhbhogbekhffeilebkabnaggomgdoabaaaaaaheadaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcaiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaa
acaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaabaaaaaaogikcaaa
aaaaaaaaabaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedlpodihddmkbkllhlmpdhlpmoobnepbdfabaaaaaaoeaeaaaaaeaaaaaa
daaaaaaajmabaaaakmadaaaafmaeaaaaebgpgodjgeabaaaageabaaaaaaacpopp
aaabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
abaaabaaaaaaaaaaabaaaaaaabaaacaaaaaaaaaaacaaaaaaaeaaadaaaaaaaaaa
acaaamaaadaaahaaaaaaaaaaacaabeaaabaaakaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaadaaaaahia
acaaoejaakaappkaafaaaaadabaaahiaaaaaffiaaiaaoekaaeaaaaaeaaaaalia
ahaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaajaaoekaaaaakkiaaaaapeia
afaaaaadaaaaapiaaaaaffjaaeaaoekaaeaaaaaeaaaaapiaadaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaafaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
agaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaacaaoekappppaaaafdeieefc
aiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaabaaaaaaegiacaaaaaaaaaaaabaaaaaaogikcaaaaaaaaaaaabaaaaaa
diaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[13] = { program.local[0],
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 11 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
mul r0.xyz, v3, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedibiegpnhebaoneabilfmbejhmaglhbcfabaaaaaaoiadaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcemacaaaaeaaaabaa
jdaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
abaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaadiaaaaai
hcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaai
hcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
lcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaa
abaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaa
aaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaa
aaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedpnegenjbgofmmbpfdkebinihhaaabilmabaaaaaahiafaaaaaeaaaaaa
daaaaaaalmabaaaabaaeaaaaniaeaaaaebgpgodjieabaaaaieabaaaaaaacpopp
caabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
acaaabaaaaaaaaaaabaaaaaaabaaadaaaaaaaaaaacaaaaaaaeaaaeaaaaaaaaaa
acaaamaaadaaaiaaaaaaaaaaacaabeaaabaaalaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoeka
abaaookaafaaaaadaaaaahiaadaaoejaalaappkaafaaaaadabaaahiaaaaaffia
ajaaoekaaeaaaaaeaaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
akaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabekaacaaleka
afaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
emacaaaaeaaaabaajdaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaabaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[13] = { program.local[0],
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 11 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
mul r0.xyz, v3, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedibiegpnhebaoneabilfmbejhmaglhbcfabaaaaaaoiadaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcemacaaaaeaaaabaa
jdaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
abaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaadiaaaaai
hcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaai
hcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
lcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaa
abaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaa
aaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaa
aaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedpnegenjbgofmmbpfdkebinihhaaabilmabaaaaaahiafaaaaaeaaaaaa
daaaaaaalmabaaaabaaeaaaaniaeaaaaebgpgodjieabaaaaieabaaaaaaacpopp
caabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
acaaabaaaaaaaaaaabaaaaaaabaaadaaaaaaaaaaacaaaaaaaeaaaeaaaaaaaaaa
acaaamaaadaaaiaaaaaaaaaaacaabeaaabaaalaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoeka
abaaookaafaaaaadaaaaahiaadaaoejaalaappkaafaaaaadabaaahiaaaaaffia
ajaaoekaaeaaaaaeaaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
akaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabekaacaaleka
afaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
emacaaaaeaaaabaajdaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaabaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaadaaaaaapgipcaaaacaaaaaa
beaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaa
aaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaa
aoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[13] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
END
# 15 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"vs_2_0
def c13, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c13.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v2, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedjhbghndbngbddkjaeifnmjoofbcclcaiabaaaaaadeaeaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaaogikcaaaaaaaaaaaafaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedjnaekckoonejflkafgjbkhnpmcfhokdfabaaaaaaaeagaaaaaeaaaaaa
daaaaaaapmabaaaaleaeaaaageafaaaaebgpgodjmeabaaaameabaaaaaaacpopp
feabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
abaaabaaaaaaaaaaabaaafaaabaaacaaaaaaaaaaacaaaaaaabaaadaaaaaaaaaa
adaaaaaaaeaaaeaaaaaaaaaaadaaamaaadaaaiaaaaaaaaaaadaabeaaabaaalaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafamaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaad
aaaaahiaacaaoejaalaappkaafaaaaadabaaahiaaaaaffiaajaaoekaaeaaaaae
aaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaakaaoekaaaaakkia
aaaapeiaafaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaahaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaamaaaaka
afaaaaadabaaaiiaabaaffiaacaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaaogikcaaaaaaaaaaaafaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[14] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..13] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 16 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"vs_2_0
def c14, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c14.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v3, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedldpjeppachbaonhfdhflnplhpenfioahabaaaaaakiaeaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcpeacaaaaeaaaabaalnaaaaaafjaaaaae
egiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaafaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaa
agaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaaadaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedgfdohohffoanbfajicbmjnfpiceedlghabaaaaaajiagaaaaaeaaaaaa
daaaaaaabmacaaaabiafaaaaoaafaaaaebgpgodjoeabaaaaoeabaaaaaaacpopp
heabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
acaaabaaaaaaaaaaabaaafaaabaaadaaaaaaaaaaacaaaaaaabaaaeaaaaaaaaaa
adaaaaaaaeaaafaaaaaaaaaaadaaamaaadaaajaaaaaaaaaaadaabeaaabaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoeja
abaaoekaabaaookaafaaaaadaaaaahiaadaaoejaamaappkaafaaaaadabaaahia
aaaaffiaakaaoekaaeaaaaaeaaaaaliaajaakekaaaaaaaiaabaakeiaaeaaaaae
abaaahoaalaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaapiaaaaaffjaagaaoekaaeaaaaaeaaaaapiaafaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaahaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaaiaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaanaaaaka
afaaaaadabaaaiiaabaaffiaadaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaaeaaoekappppaaaafdeieefc
peacaaaaeaaaabaalnaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaaogikcaaa
aaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaa
egbcbaaaadaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaa
fgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaa
egiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaa
abaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaak
hcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadp
aaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaa
abaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaa
aeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
ljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
keaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"!!ARBvp1.0
PARAM c[14] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..13] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 16 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
"vs_2_0
def c14, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c14.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v3, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedldpjeppachbaonhfdhflnplhpenfioahabaaaaaakiaeaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcpeacaaaaeaaaabaalnaaaaaafjaaaaae
egiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaa
egiacaaaaaaaaaaaafaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaa
agaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaaadaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedgfdohohffoanbfajicbmjnfpiceedlghabaaaaaajiagaaaaaeaaaaaa
daaaaaaabmacaaaabiafaaaaoaafaaaaebgpgodjoeabaaaaoeabaaaaaaacpopp
heabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
acaaabaaaaaaaaaaabaaafaaabaaadaaaaaaaaaaacaaaaaaabaaaeaaaaaaaaaa
adaaaaaaaeaaafaaaaaaaaaaadaaamaaadaaajaaaaaaaaaaadaabeaaabaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaabaaoeja
abaaoekaabaaookaafaaaaadaaaaahiaadaaoejaamaappkaafaaaaadabaaahia
aaaaffiaakaaoekaaeaaaaaeaaaaaliaajaakekaaaaaaaiaabaakeiaaeaaaaae
abaaahoaalaaoekaaaaakkiaaaaapeiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaapiaaaaaffjaagaaoekaaeaaaaaeaaaaapiaafaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaahaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaaiaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaanaaaaka
afaaaaadabaaaiiaabaaffiaadaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaaeaaoekappppaaaafdeieefc
peacaaaaeaaaabaalnaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaaogikcaaa
aaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaa
aaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaadiaaaaaihcaabaaaabaaaaaa
egbcbaaaadaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaa
fgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaa
egiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaa
abaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaak
hcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadp
aaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaa
abaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaa
aeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
kbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
ljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeo
aafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaakl
epfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaa
keaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaakeaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[12] = { program.local[0],
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 result.texcoord[3].z, R0, c[7];
DP3 result.texcoord[3].y, R0, c[6];
DP3 result.texcoord[3].x, R0, c[5];
MOV result.texcoord[4].xyz, c[9];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 10 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 10 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
mul r0.xyz, v2, c9.w
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
dp3 oT3.x, r0, c4
mov oT4.xyz, c8
mad oT0.xy, v1, c10, c10.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedggnjhbhogbekhffeilebkabnaggomgdoabaaaaaaheadaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefcaiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaa
acaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaaabaaaaaaogikcaaa
aaaaaaaaabaaaaaadiaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 9 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedlpodihddmkbkllhlmpdhlpmoobnepbdfabaaaaaaoeaeaaaaaeaaaaaa
daaaaaaajmabaaaakmadaaaafmaeaaaaebgpgodjgeabaaaageabaaaaaaacpopp
aaabaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
abaaabaaaaaaaaaaabaaaaaaabaaacaaaaaaaaaaacaaaaaaaeaaadaaaaaaaaaa
acaaamaaadaaahaaaaaaaaaaacaabeaaabaaakaaaaaaaaaaaaaaaaaaaaacpopp
bpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaacia
acaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaadaaaaahia
acaaoejaakaappkaafaaaaadabaaahiaaaaaffiaaiaaoekaaeaaaaaeaaaaalia
ahaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaajaaoekaaaaakkiaaaaapeia
afaaaaadaaaaapiaaaaaffjaaeaaoekaaeaaaaaeaaaaapiaadaaoekaaaaaaaja
aaaaoeiaaeaaaaaeaaaaapiaafaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapia
agaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaacaaoekappppaaaafdeieefc
aiacaaaaeaaaabaaicaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaafjaaaaae
egiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaabaaaaaaegiacaaaaaaaaaaaabaaaaaaogikcaaaaaaaaaaaabaaaaaa
diaaaaaihcaabaaaaaaaaaaaegbcbaaaacaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"!!ARBvp1.0
PARAM c[13] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..12] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[5].xy, R1, R1.z;
MUL R1.xyz, vertex.normal, c[11].w;
MOV result.position, R0;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[12], c[12].zwzw;
END
# 15 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
"vs_2_0
def c13, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c13.x
mul r1.y, r1, c8.x
mad oT5.xy, r1.z, c9.zwzw, r1
mul r1.xyz, v2, c11.w
mov oPos, r0
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
mad oT0.xy, v1, c12, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedjhbghndbngbddkjaeifnmjoofbcclcaiabaaaaaadeaeaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaaogikcaaaaaaaaaaaafaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 12 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedjnaekckoonejflkafgjbkhnpmcfhokdfabaaaaaaaeagaaaaaeaaaaaa
daaaaaaapmabaaaaleaeaaaageafaaaaebgpgodjmeabaaaameabaaaaaaacpopp
feabaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
abaaabaaaaaaaaaaabaaafaaabaaacaaaaaaaaaaacaaaaaaabaaadaaaaaaaaaa
adaaaaaaaeaaaeaaaaaaaaaaadaaamaaadaaaiaaaaaaaaaaadaabeaaabaaalaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafamaaapkaaaaaaadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjaaeaaaaaeaaaaadoaabaaoejaabaaoekaabaaookaafaaaaad
aaaaahiaacaaoejaalaappkaafaaaaadabaaahiaaaaaffiaajaaoekaaeaaaaae
aaaaaliaaiaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaakaaoekaaaaakkia
aaaapeiaafaaaaadaaaaapiaaaaaffjaafaaoekaaeaaaaaeaaaaapiaaeaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaagaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaahaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaamaaaaka
afaaaaadabaaaiiaabaaffiaacaaaakaacaaaaadadaaadoaabaakkiaabaaomia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoaadaaoekappppaaaafdeieefc
laacaaaaeaaaabaakmaaaaaafjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaaogikcaaaaaaaaaaaafaaaaaadiaaaaaihcaabaaaabaaaaaaegbcbaaa
acaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
abaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaa
adaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaa
abaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaa
dgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaa
bkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 31 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Float 12 [V_FR_Global_Control]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[17] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..15],
		{ 20 } };
TEMP R0;
TEMP R1;
MAD R0.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R0.xyz, R0.w, R0;
FLR R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].z;
ADD R0.xyz, R0, -R1;
MAD R0.xyz, R0, c[15].x, R1;
MOV R0.w, c[12].x;
MOV R1.w, c[10];
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[16].x;
ADD R1.xyz, R1, c[0].y;
MUL R1.xyz, R1, c[10].w;
MUL R0.w, R0, c[13].x;
MUL R1.w, R1, c[14].x;
MUL R0.w, R1, R0;
MAD R0.xyz, R0, R0.w, vertex.position;
MOV R0.w, vertex.position;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[11];
MUL R0.xy, R0, c[0].w;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
END
# 31 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Float 11 [V_FR_Global_Control]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_color0 v3
def c15, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c16, 20.00000000, -1.00000000, 0, 0
mad r1.xyz, v3, c15.x, c15.y
frc r0.xyz, v2
add r2.xyz, v2, -r0
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul r1.xyz, r0.w, r1
mul r2.xyz, r2, c15.z
add r1.xyz, r1, -r2
mov r1.w, c12.x
mov r0.w, c13.x
mad r0.xyz, r0, c16.x, c16.y
mul r0.xyz, r0, c9.w
mul r1.w, c11.x, r1
mul r0.w, c9, r0
mul r0.w, r0, r1
mad r1.xyz, r1, c14.x, r2
mad r1.xyz, r1, r0.w, v0
mov r1.w, v0
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c10
dp3 oT3.x, r0, c4
mul r0.xy, r1, c15.w
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 24 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Global_Control]
Float 52 [V_FR_Fragmentum]
Float 56 [V_FR_DisplaceAmount]
Float 80 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedacgejifemmmobnnbmhkpdcbhifjlfmkdabaaaaaaimafaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefccaaeaaaaeaaaabaaaiabaaaafjaaaaaeegiocaaaaaaaaaaa
agaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaa
aeaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaa
bkiacaaaaaaaaaaaadaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaa
adaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
acaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaabaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaa
acaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaeb
aaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaa
diaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 24 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Global_Control]
Float 52 [V_FR_Fragmentum]
Float 56 [V_FR_DisplaceAmount]
Float 80 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedjfilgfilecfgcelebnfokknegdmpffgmabaaaaaafaaiaaaaaeaaaaaa
daaaaaaapaacaaaabiahaaaamiahaaaaebgpgodjliacaaaaliacaaaaaaacpopp
dmacaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaabaaacaaaaaaaaaaaaaaafaaabaaadaaaaaaaaaa
abaaaaaaabaaaeaaaaaaaaaaacaaaaaaaeaaafaaaaaaaaaaacaaamaaadaaajaa
aaaaaaaaacaabeaaabaaamaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapka
gpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaafaoaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeabaaahiaaaaaoeiaanaaffkaanaakkkaacaaaaadaaaaahia
aaaaoeibacaaoejaafaaaaadabaaahiaabaaoeiaamaappkaafaaaaadacaaahia
abaaffiaakaaoekaaeaaaaaeabaaaliaajaakekaabaaaaiaacaakeiaaeaaaaae
abaaahoaalaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaad
abaaadiaabaaoeiaabaaoekaabaaaaacabaaamiaabaaoekaaeaaaaaeaaaaadoa
abaaoeiaaoaaaakaabaaooiaaeaaaaaeabaaahiaaeaaoejaanaappkaanaakkka
ceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahiaaaaaoeiaanaaaakbacaaoeia
afaaaaadaaaaahiaaaaaoeiaanaaaakaaeaaaaaeaaaaahiaadaaaakaabaaoeia
aaaaoeiaafaaaaadaaaaaiiaacaaaakaacaaffkaabaaaaacabaaaiiaamaappka
afaaaaadabaaabiaabaappiaacaakkkaafaaaaadaaaaaiiaaaaappiaabaaaaia
aeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoejaafaaaaadabaaapiaaaaaffia
agaaoekaaeaaaaaeabaaapiaafaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaaeaaoekappppaaaafdeieefccaaeaaaaeaaaabaaaiabaaaa
fjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaap
hcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaea
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
egacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaa
afaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaa
akiacaaaaaaaaaaaadaaaaaabkiacaaaaaaaaaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaackiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaa
aaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaabkaaaaaf
hcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaa
aaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaa
amaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
ijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
heaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 32 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[18] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20 } };
TEMP R0;
TEMP R1;
MAD R0.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R0.xyz, R0.w, R0;
FLR R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].z;
ADD R0.xyz, R0, -R1;
MAD R0.xyz, R0, c[16].x, R1;
MOV R0.w, c[13].x;
MOV R1.w, c[10];
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[17].x;
ADD R1.xyz, R1, c[0].y;
MUL R1.xyz, R1, c[10].w;
MUL R0.w, R0, c[14].x;
MUL R1.w, R1, c[15].x;
MUL R0.w, R1, R0;
MAD R0.xyz, R0, R0.w, vertex.position;
MOV R0.w, vertex.position;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[11];
MUL R0.xy, R0, c[0].w;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
END
# 32 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 35 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
Float 12 [V_FR_Global_Control]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_color0 v4
def c16, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c17, 20.00000000, -1.00000000, 0, 0
mad r1.xyz, v4, c16.x, c16.y
frc r0.xyz, v3
add r2.xyz, v3, -r0
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul r1.xyz, r0.w, r1
mul r2.xyz, r2, c16.z
add r1.xyz, r1, -r2
mov r1.w, c13.x
mov r0.w, c14.x
mad r0.xyz, r0, c17.x, c17.y
mul r0.xyz, r0, c9.w
mul r1.w, c12.x, r1
mul r0.w, c9, r0
mul r0.w, r0, r1
mad r1.xyz, r1, c15.x, r2
mad r1.xyz, r1, r0.w, v0
mov r1.w, v0
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c10
dp3 oT3.x, r0, c4
mul r0.xy, r1, c16.w
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 25 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Global_Control]
Float 68 [V_FR_Fragmentum]
Float 72 [V_FR_DisplaceAmount]
Float 96 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedfcaccedmlglegglpgmodpjbbohdmnggbabaaaaaaaaagaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcgeaeaaaaeaaaabaa
bjabaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaa
aaaaaaaaegbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaia
ebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaagaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaabkiacaaaaaaaaaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
ckiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaa
abaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaa
abaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaeb
aaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaa
acaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaa
aaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaa
egiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaa
aaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 25 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Global_Control]
Float 68 [V_FR_Fragmentum]
Float 72 [V_FR_DisplaceAmount]
Float 96 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgfhbbigbplopnfmconjkmdaajbmipmdnabaaaaaaoeaiaaaaaeaaaaaa
daaaaaaabaadaaaahmahaaaaeeaiaaaaebgpgodjniacaaaaniacaaaaaaacpopp
fmacaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaabaaadaaaaaaaaaaaaaaagaaabaaaeaaaaaaaaaa
abaaaaaaabaaafaaaaaaaaaaacaaaaaaaeaaagaaaaaaaaaaacaaamaaadaaakaa
aaaaaaaaacaabeaaabaaanaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafaoaaapka
gpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaafapaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaafia
afaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeabaaahiaaaaaoeiaaoaaffka
aoaakkkaacaaaaadaaaaahiaaaaaoeibadaaoejaafaaaaadabaaahiaabaaoeia
anaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaaliaakaakeka
abaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeiabdaaaaac
abaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacabaaamia
abaaoekaaeaaaaaeaaaaadoaabaaoeiaapaaaakaabaaooiaaeaaaaaeaaaaamoa
acaabejaacaabekaacaalekaaeaaaaaeabaaahiaafaaoejaaoaappkaaoaakkka
ceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahiaaaaaoeiaaoaaaakbacaaoeia
afaaaaadaaaaahiaaaaaoeiaaoaaaakaaeaaaaaeaaaaahiaaeaaaakaabaaoeia
aaaaoeiaafaaaaadaaaaaiiaadaaaakaadaaffkaabaaaaacabaaaiiaanaappka
afaaaaadabaaabiaabaappiaadaakkkaafaaaaadaaaaaiiaaaaappiaabaaaaia
aeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoejaafaaaaadabaaapiaaaaaffia
ahaaoekaaeaaaaaeabaaapiaagaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
aiaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaafaaoekappppaaaafdeieefcgeaeaaaaeaaaabaabjabaaaa
fjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
fpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaa
abaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaagaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaabkiacaaaaaaaaaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaa
aaaaaaaaaeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheo
maaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaa
abaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapahaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 32 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Vector 12 [unity_LightmapST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[18] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20 } };
TEMP R0;
TEMP R1;
MAD R0.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R0.xyz, R0.w, R0;
FLR R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].z;
ADD R0.xyz, R0, -R1;
MAD R0.xyz, R0, c[16].x, R1;
MOV R0.w, c[13].x;
MOV R1.w, c[10];
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[17].x;
ADD R1.xyz, R1, c[0].y;
MUL R1.xyz, R1, c[10].w;
MUL R0.w, R0, c[14].x;
MUL R1.w, R1, c[15].x;
MUL R0.w, R1, R0;
MAD R0.xyz, R0, R0.w, vertex.position;
MOV R0.w, vertex.position;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[11];
MUL R0.xy, R0, c[0].w;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[12], c[12].zwzw;
END
# 32 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 35 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Vector 11 [unity_LightmapST]
Float 12 [V_FR_Global_Control]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_color0 v4
def c16, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c17, 20.00000000, -1.00000000, 0, 0
mad r1.xyz, v4, c16.x, c16.y
frc r0.xyz, v3
add r2.xyz, v3, -r0
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul r1.xyz, r0.w, r1
mul r2.xyz, r2, c16.z
add r1.xyz, r1, -r2
mov r1.w, c13.x
mov r0.w, c14.x
mad r0.xyz, r0, c17.x, c17.y
mul r0.xyz, r0, c9.w
mul r1.w, c12.x, r1
mul r0.w, c9, r0
mul r0.w, r0, r1
mad r1.xyz, r1, c15.x, r2
mad r1.xyz, r1, r0.w, v0
mov r1.w, v0
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c10
dp3 oT3.x, r0, c4
mul r0.xy, r1, c16.w
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
mad oT1.xy, v2, c11, c11.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 25 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Global_Control]
Float 68 [V_FR_Fragmentum]
Float 72 [V_FR_DisplaceAmount]
Float 96 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedfcaccedmlglegglpgmodpjbbohdmnggbabaaaaaaaaagaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcgeaeaaaaeaaaabaa
bjabaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaa
aaaaaaaaegbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaia
ebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaagaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaabkiacaaaaaaaaaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
ckiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaa
abaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaa
abaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaeb
aaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaa
abaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaa
acaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaa
aaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaa
egiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaak
hccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaa
aaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 25 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Global_Control]
Float 68 [V_FR_Fragmentum]
Float 72 [V_FR_DisplaceAmount]
Float 96 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedgfhbbigbplopnfmconjkmdaajbmipmdnabaaaaaaoeaiaaaaaeaaaaaa
daaaaaaabaadaaaahmahaaaaeeaiaaaaebgpgodjniacaaaaniacaaaaaaacpopp
fmacaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaabaaadaaaaaaaaaaaaaaagaaabaaaeaaaaaaaaaa
abaaaaaaabaaafaaaaaaaaaaacaaaaaaaeaaagaaaaaaaaaaacaaamaaadaaakaa
aaaaaaaaacaabeaaabaaanaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafaoaaapka
gpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaafapaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaafia
afaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeabaaahiaaaaaoeiaaoaaffka
aoaakkkaacaaaaadaaaaahiaaaaaoeibadaaoejaafaaaaadabaaahiaabaaoeia
anaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaaliaakaakeka
abaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeiabdaaaaac
abaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacabaaamia
abaaoekaaeaaaaaeaaaaadoaabaaoeiaapaaaakaabaaooiaaeaaaaaeaaaaamoa
acaabejaacaabekaacaalekaaeaaaaaeabaaahiaafaaoejaaoaappkaaoaakkka
ceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahiaaaaaoeiaaoaaaakbacaaoeia
afaaaaadaaaaahiaaaaaoeiaaoaaaakaaeaaaaaeaaaaahiaaeaaaakaabaaoeia
aaaaoeiaafaaaaadaaaaaiiaadaaaakaadaaffkaabaaaaacabaaaiiaanaappka
afaaaaadabaaabiaabaappiaadaakkkaafaaaaadaaaaaiiaaaaappiaabaaaaia
aeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoejaafaaaaadabaaapiaaaaaffia
ahaaoekaaeaaaaaeabaaapiaagaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
aiaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaafaaoekappppaaaafdeieefcgeaeaaaaeaaaabaabjabaaaa
fjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
fpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
ebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaa
abaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaagaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaabkiacaaaaaaaaaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaa
aaaaaaaaaeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheo
maaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaa
abaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapahaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 36 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[18] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MAD R1.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.x, R1, R1;
RSQ R0.w, R0.x;
FLR R2.xyz, vertex.normal;
MUL R0.xyz, R2, c[0].z;
MUL R1.xyz, R0.w, R1;
ADD R1.xyz, R1, -R0;
MAD R0.xyz, R1, c[16].x, R0;
MOV R1.x, c[13];
MOV R0.w, c[11];
FRC R2.xyz, vertex.normal;
MOV R1.w, vertex.position;
MUL R1.x, R1, c[14];
MUL R0.w, R0, c[15].x;
MUL R0.w, R0, R1.x;
MAD R1.xyz, R0, R0.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[17].y;
MUL R3.y, R3, c[9].x;
MUL R2.xyz, R2, c[17].x;
ADD R1.xyz, R2, c[0].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
END
# 36 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_color0 v3
def c17, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c18, 20.00000000, -1.00000000, 0.50000000, 0
mad r0.xyz, v3, c17.x, c17.y
frc r2.xyz, v2
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0.xyz, r0.w, r0
add r1.xyz, v2, -r2
mul r1.xyz, r1, c17.z
add r0.xyz, r0, -r1
mad r0.xyz, r0, c16.x, r1
mov r1.x, c14
mov r0.w, c15.x
mov r1.w, v0
mul r1.x, c13, r1
mul r0.w, c11, r0
mul r0.w, r0, r1.x
mad r1.xyz, r0, r0.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c18.z
mul r3.y, r3, c8.x
mad r1.xyz, r2, c18.x, c18.y
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c17.w
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 27 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Global_Control]
Float 116 [V_FR_Fragmentum]
Float 120 [V_FR_DisplaceAmount]
Float 144 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedcclgbcheodfoiikbjihcbkfkbdjmkcloabaaaaaaemagaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
miaeaaaaeaaaabaadcabaaaafjaaaaaeegiocaaaaaaaaaaaakaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaea
aaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaa
acaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddk
gpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaa
agiacaaaaaaaaaaaajaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaj
icaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaabkiacaaaaaaaaaaaahaaaaaa
diaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaa
beaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaaf
pccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaa
abaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaeb
aaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaa
abaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
adaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaa
agaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
adaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaa
aaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaa
aeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaa
mgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 27 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Global_Control]
Float 116 [V_FR_Fragmentum]
Float 120 [V_FR_DisplaceAmount]
Float 144 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedbndkfplmmjfhdlmjabdhmnppabpleeojabaaaaaafiajaaaaaeaaaaaa
daaaaaaadiadaaaaaiaiaaaaliaiaaaaebgpgodjaaadaaaaaaadaaaaaaacpopp
hiacaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaabaaacaaaaaaaaaaaaaaajaaabaaadaaaaaaaaaa
abaaafaaabaaaeaaaaaaaaaaacaaaaaaabaaafaaaaaaaaaaadaaaaaaaeaaagaa
aaaaaaaaadaaamaaadaaakaaaaaaaaaaadaabeaaabaaanaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafaoaaapkagpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaaf
apaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeabaaahiaaaaaoeiaaoaaffka
aoaakkkaacaaaaadaaaaahiaaaaaoeibacaaoejaafaaaaadabaaahiaabaaoeia
anaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaaliaakaakeka
abaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeiabdaaaaac
abaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacacaaabia
apaaaakaaeaaaaaeaaaaadoaabaaoeiaacaaaaiaabaaookaaeaaaaaeabaaahia
aeaaoejaaoaappkaaoaakkkaceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahia
aaaaoeiaaoaaaakbacaaoeiaafaaaaadaaaaahiaaaaaoeiaaoaaaakaaeaaaaae
aaaaahiaadaaaakaabaaoeiaaaaaoeiaafaaaaadaaaaaiiaacaaaakaacaaffka
abaaaaacabaaaiiaanaappkaafaaaaadabaaabiaabaappiaacaakkkaafaaaaad
aaaaaiiaaaaappiaabaaaaiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoeja
afaaaaadabaaapiaaaaaffiaahaaoekaaeaaaaaeabaaapiaagaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
ajaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaapaaffkaafaaaaad
abaaaiiaabaaffiaaeaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaafaaoekappppaaaafdeieefcmiaeaaaa
eaaaabaadcabaaaafjaaaaaeegiocaaaaaaaaaaaakaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
dcaaaaaphcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaeaaaaaaaea
aaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaa
diaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddk
gpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaa
aaaaaaaaajaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaabkiacaaaaaaaaaaaahaaaaaadiaaaaaj
bcaabaaaabaaaaaackiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaaabaaaaaa
egbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaa
aaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialp
aaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaa
jjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 37 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Global_Control]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Float 17 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[19] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MAD R1.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.x, R1, R1;
RSQ R0.w, R0.x;
FLR R2.xyz, vertex.normal;
MUL R0.xyz, R2, c[0].z;
MUL R1.xyz, R0.w, R1;
ADD R1.xyz, R1, -R0;
MAD R0.xyz, R1, c[17].x, R0;
MOV R1.x, c[14];
MOV R0.w, c[11];
FRC R2.xyz, vertex.normal;
MOV R1.w, vertex.position;
MUL R1.x, R1, c[15];
MUL R0.w, R0, c[16].x;
MUL R0.w, R0, R1.x;
MAD R1.xyz, R0, R0.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[18].y;
MUL R3.y, R3, c[9].x;
MUL R2.xyz, R2, c[18].x;
ADD R1.xyz, R2, c[0].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 37 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Global_Control]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Float 17 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_color0 v4
def c18, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c19, 20.00000000, -1.00000000, 0.50000000, 0
mad r0.xyz, v4, c18.x, c18.y
frc r2.xyz, v3
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0.xyz, r0.w, r0
add r1.xyz, v3, -r2
mul r1.xyz, r1, c18.z
add r0.xyz, r0, -r1
mad r0.xyz, r0, c17.x, r1
mov r1.x, c15
mov r0.w, c16.x
mov r1.w, v0
mul r1.x, c14, r1
mul r0.w, c11, r0
mul r0.w, r0, r1.x
mad r1.xyz, r0, r0.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c19.z
mul r3.y, r3, c8.x
mad r1.xyz, r2, c19.x, c19.y
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c18.w
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 28 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Global_Control]
Float 132 [V_FR_Fragmentum]
Float 136 [V_FR_DisplaceAmount]
Float 160 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedelbhmenljkpnhfkpimhjakhhpbpfobpmabaaaaaamaagaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcamafaaaaeaaaabaaedabaaaafjaaaaae
egiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaaafaaaaaa
aceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaa
abaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaak
hcaabaaaaaaaaaaaagiacaaaaaaaaaaaakaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaabkiacaaa
aaaaaaaaaiaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaaaiaaaaaa
dkiacaaaadaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
akaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaa
aaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
abaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaa
egiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaa
dcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaa
kgiocaaaaaaaaaaaagaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaa
dcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaeb
aaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaai
hcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaai
hcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
lcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaa
acaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaa
abaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaa
aaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadp
aaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaa
diaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaa
aaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 28 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Global_Control]
Float 132 [V_FR_Fragmentum]
Float 136 [V_FR_DisplaceAmount]
Float 160 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedmcogeabgdkfpbcecjllhbagolocmjobpabaaaaaaomajaaaaaeaaaaaa
daaaaaaafiadaaaagmaiaaaadeajaaaaebgpgodjcaadaaaacaadaaaaaaacpopp
jiacaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaabaaadaaaaaaaaaaaaaaakaaabaaaeaaaaaaaaaa
abaaafaaabaaafaaaaaaaaaaacaaaaaaabaaagaaaaaaaaaaadaaaaaaaeaaahaa
aaaaaaaaadaaamaaadaaalaaaaaaaaaaadaabeaaabaaaoaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafapaaapkagpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaaf
baaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabpaaaaacafaaafiaafaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaae
abaaahiaaaaaoeiaapaaffkaapaakkkaacaaaaadaaaaahiaaaaaoeibadaaoeja
afaaaaadabaaahiaabaaoeiaaoaappkaafaaaaadacaaahiaabaaffiaamaaoeka
aeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoaanaaoeka
abaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadiaabaaoeia
abaaoekaabaaaaacacaaabiabaaaaakaaeaaaaaeaaaaadoaabaaoeiaacaaaaia
abaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaaeaaaaaeabaaahia
afaaoejaapaappkaapaakkkaceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahia
aaaaoeiaapaaaakbacaaoeiaafaaaaadaaaaahiaaaaaoeiaapaaaakaaeaaaaae
aaaaahiaaeaaaakaabaaoeiaaaaaoeiaafaaaaadaaaaaiiaadaaaakaadaaffka
abaaaaacabaaaiiaaoaappkaafaaaaadabaaabiaabaappiaadaakkkaafaaaaad
aaaaaiiaaaaappiaabaaaaiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoeja
afaaaaadabaaapiaaaaaffiaaiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
akaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabaaaffkaafaaaaad
abaaaiiaabaaffiaafaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaagaaoekappppaaaafdeieefcamafaaaa
eaaaabaaedabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
afaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadcaaaaaphcaabaaa
aaaaaaaaegbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaia
ebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaakaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaa
aaaaaaaaaiaaaaaabkiacaaaaaaaaaaaaiaaaaaadiaaaaajbcaabaaaabaaaaaa
ckiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
abaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaafhcaabaaa
abaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
adaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaa
agaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
adaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaa
aaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaa
aeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaa
mgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 37 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Global_Control]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Float 17 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[19] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..17],
		{ 20, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MAD R1.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.x, R1, R1;
RSQ R0.w, R0.x;
FLR R2.xyz, vertex.normal;
MUL R0.xyz, R2, c[0].z;
MUL R1.xyz, R0.w, R1;
ADD R1.xyz, R1, -R0;
MAD R0.xyz, R1, c[17].x, R0;
MOV R1.x, c[14];
MOV R0.w, c[11];
FRC R2.xyz, vertex.normal;
MOV R1.w, vertex.position;
MUL R1.x, R1, c[15];
MUL R0.w, R0, c[16].x;
MUL R0.w, R0, R1.x;
MAD R1.xyz, R0, R0.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[18].y;
MUL R3.y, R3, c[9].x;
MUL R2.xyz, R2, c[18].x;
ADD R1.xyz, R2, c[0].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[13], c[13].zwzw;
END
# 37 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Vector 13 [unity_LightmapST]
Float 14 [V_FR_Global_Control]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Float 17 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_color0 v4
def c18, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c19, 20.00000000, -1.00000000, 0.50000000, 0
mad r0.xyz, v4, c18.x, c18.y
frc r2.xyz, v3
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0.xyz, r0.w, r0
add r1.xyz, v3, -r2
mul r1.xyz, r1, c18.z
add r0.xyz, r0, -r1
mad r0.xyz, r0, c17.x, r1
mov r1.x, c15
mov r0.w, c16.x
mov r1.w, v0
mul r1.x, c14, r1
mul r0.w, c11, r0
mul r0.w, r0, r1.x
mad r1.xyz, r0, r0.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c19.z
mul r3.y, r3, c8.x
mad r1.xyz, r2, c19.x, c19.y
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c18.w
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
mad oT1.xy, v2, c13, c13.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 28 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Global_Control]
Float 132 [V_FR_Fragmentum]
Float 136 [V_FR_DisplaceAmount]
Float 160 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedelbhmenljkpnhfkpimhjakhhpbpfobpmabaaaaaamaagaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefcamafaaaaeaaaabaaedabaaaafjaaaaae
egiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaafaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaaafaaaaaa
aceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaa
abaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaak
hcaabaaaaaaaaaaaagiacaaaaaaaaaaaakaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaabkiacaaa
aaaaaaaaaiaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaaaiaaaaaa
dkiacaaaadaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
akaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaa
aaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
abaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaa
egiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaa
dcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaa
kgiocaaaaaaaaaaaagaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaa
dcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaeb
aaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaai
hcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaai
hcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
lcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaaabaaaaaaegaibaaa
acaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgakbaaa
abaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaaacaaaaaa
aaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaaaceaaaaaaaaaaadp
aaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaakgaobaaaaaaaaaaa
diaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaa
aaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 28 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Global_Control]
Float 132 [V_FR_Fragmentum]
Float 136 [V_FR_DisplaceAmount]
Float 160 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedmcogeabgdkfpbcecjllhbagolocmjobpabaaaaaaomajaaaaaeaaaaaa
daaaaaaafiadaaaagmaiaaaadeajaaaaebgpgodjcaadaaaacaadaaaaaaacpopp
jiacaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaabaaadaaaaaaaaaaaaaaakaaabaaaeaaaaaaaaaa
abaaafaaabaaafaaaaaaaaaaacaaaaaaabaaagaaaaaaaaaaadaaaaaaaeaaahaa
aaaaaaaaadaaamaaadaaalaaaaaaaaaaadaabeaaabaaaoaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafapaaapkagpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaaf
baaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadia
adaaapjabpaaaaacafaaafiaafaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaae
abaaahiaaaaaoeiaapaaffkaapaakkkaacaaaaadaaaaahiaaaaaoeibadaaoeja
afaaaaadabaaahiaabaaoeiaaoaappkaafaaaaadacaaahiaabaaffiaamaaoeka
aeaaaaaeabaaaliaalaakekaabaaaaiaacaakeiaaeaaaaaeabaaahoaanaaoeka
abaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaadabaaadiaabaaoeia
abaaoekaabaaaaacacaaabiabaaaaakaaeaaaaaeaaaaadoaabaaoeiaacaaaaia
abaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaaeaaaaaeabaaahia
afaaoejaapaappkaapaakkkaceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahia
aaaaoeiaapaaaakbacaaoeiaafaaaaadaaaaahiaaaaaoeiaapaaaakaaeaaaaae
aaaaahiaaeaaaakaabaaoeiaaaaaoeiaafaaaaadaaaaaiiaadaaaakaadaaffka
abaaaaacabaaaiiaaoaappkaafaaaaadabaaabiaabaappiaadaakkkaafaaaaad
aaaaaiiaaaaappiaabaaaaiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoeja
afaaaaadabaaapiaaaaaffiaaiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
akaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabaaaffkaafaaaaad
abaaaiiaabaaffiaafaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaagaaoekappppaaaafdeieefcamafaaaa
eaaaabaaedabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
afaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadcaaaaaphcaabaaa
aaaaaaaaegbcbaaaafaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaa
aceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadiaaaaakhcaabaaa
abaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaia
ebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaakaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaa
aaaaaaaaaiaaaaaabkiacaaaaaaaaaaaaiaaaaaadiaaaaajbcaabaaaabaaaaaa
ckiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
abaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaafhcaabaaa
abaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
adaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaa
agaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
adaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaa
aaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaa
aeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaa
mgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 31 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [unity_Scale]
Vector 11 [_MainTex_ST]
Float 12 [V_FR_Global_Control]
Float 13 [V_FR_Fragmentum]
Float 14 [V_FR_DisplaceAmount]
Float 15 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[17] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..15],
		{ 20 } };
TEMP R0;
TEMP R1;
MAD R0.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R0.xyz, R0.w, R0;
FLR R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].z;
ADD R0.xyz, R0, -R1;
MAD R0.xyz, R0, c[15].x, R1;
MOV R0.w, c[12].x;
MOV R1.w, c[10];
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[16].x;
ADD R1.xyz, R1, c[0].y;
MUL R1.xyz, R1, c[10].w;
MUL R0.w, R0, c[13].x;
MUL R1.w, R1, c[14].x;
MUL R0.w, R1, R0;
MAD R0.xyz, R0, R0.w, vertex.position;
MOV R0.w, vertex.position;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[11];
MUL R0.xy, R0, c[0].w;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[9];
ADD result.texcoord[0].xy, R0, c[11].zwzw;
END
# 31 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_WorldSpaceLightPos0]
Vector 9 [unity_Scale]
Vector 10 [_MainTex_ST]
Float 11 [V_FR_Global_Control]
Float 12 [V_FR_Fragmentum]
Float 13 [V_FR_DisplaceAmount]
Float 14 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_color0 v3
def c15, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c16, 20.00000000, -1.00000000, 0, 0
mad r1.xyz, v3, c15.x, c15.y
frc r0.xyz, v2
add r2.xyz, v2, -r0
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul r1.xyz, r0.w, r1
mul r2.xyz, r2, c15.z
add r1.xyz, r1, -r2
mov r1.w, c12.x
mov r0.w, c13.x
mad r0.xyz, r0, c16.x, c16.y
mul r0.xyz, r0, c9.w
mul r1.w, c11.x, r1
mul r0.w, c9, r0
mul r0.w, r0, r1
mad r1.xyz, r1, c14.x, r2
mad r1.xyz, r1, r0.w, v0
mov r1.w, v0
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c10
dp3 oT3.x, r0, c4
mul r0.xy, r1, c15.w
mov oT4.xyz, c8
add oT0.xy, r0, c10.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 24 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Global_Control]
Float 52 [V_FR_Fragmentum]
Float 56 [V_FR_DisplaceAmount]
Float 80 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedacgejifemmmobnnbmhkpdcbhifjlfmkdabaaaaaaimafaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefccaaeaaaaeaaaabaaaiabaaaafjaaaaaeegiocaaaaaaaaaaa
agaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaa
aeaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaaf
hcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaagpbciddkgpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaa
bkiacaaaaaaaaaaaadaaaaaadiaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaa
adaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
acaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaabaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaa
acaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaaaceaaaaaaaaakaeb
aaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaa
diaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaaacaaaaaabeaaaaaa
diaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaaagaabaaaaaaaaaaa
egaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaaadaaaaaaegiccaaa
abaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 24 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 96
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Global_Control]
Float 52 [V_FR_Fragmentum]
Float 56 [V_FR_DisplaceAmount]
Float 80 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedjfilgfilecfgcelebnfokknegdmpffgmabaaaaaafaaiaaaaaeaaaaaa
daaaaaaapaacaaaabiahaaaamiahaaaaebgpgodjliacaaaaliacaaaaaaacpopp
dmacaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaabaaacaaaaaaaaaaaaaaafaaabaaadaaaaaaaaaa
abaaaaaaabaaaeaaaaaaaaaaacaaaaaaaeaaafaaaaaaaaaaacaaamaaadaaajaa
aaaaaaaaacaabeaaabaaamaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafanaaapka
gpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaafaoaaapkaaaaacaebaaaaaaaa
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeabaaahiaaaaaoeiaanaaffkaanaakkkaacaaaaadaaaaahia
aaaaoeibacaaoejaafaaaaadabaaahiaabaaoeiaamaappkaafaaaaadacaaahia
abaaffiaakaaoekaaeaaaaaeabaaaliaajaakekaabaaaaiaacaakeiaaeaaaaae
abaaahoaalaaoekaabaakkiaabaapeiabdaaaaacabaaadiaabaaoejaafaaaaad
abaaadiaabaaoeiaabaaoekaabaaaaacabaaamiaabaaoekaaeaaaaaeaaaaadoa
abaaoeiaaoaaaakaabaaooiaaeaaaaaeabaaahiaaeaaoejaanaappkaanaakkka
ceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahiaaaaaoeiaanaaaakbacaaoeia
afaaaaadaaaaahiaaaaaoeiaanaaaakaaeaaaaaeaaaaahiaadaaaakaabaaoeia
aaaaoeiaafaaaaadaaaaaiiaacaaaakaacaaffkaabaaaaacabaaaiiaamaappka
afaaaaadabaaabiaabaappiaacaakkkaafaaaaadaaaaaiiaaaaappiaabaaaaia
aeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoejaafaaaaadabaaapiaaaaaffia
agaaoekaaeaaaaaeabaaapiaafaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
ahaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaaeaaoekappppaaaafdeieefccaaeaaaaeaaaabaaaiabaaaa
fjaaaaaeegiocaaaaaaaaaaaagaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadcaaaaap
hcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaeaaaaaaaeaaaaaaaea
aaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaadiaaaaak
hcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddkgpbciddk
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
egacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaaaaaaaaaa
afaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaaaaaaaaaa
akiacaaaaaaaaaaaadaaaaaabkiacaaaaaaaaaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaackiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaacaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaaaaaaaaa
egbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaaegiacaaa
aaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaaaceaaaaa
aaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaabkaaaaaf
hcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaa
aaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaa
amaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheokiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
ijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
heaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 36 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"!!ARBvp1.0
PARAM c[18] = { { 2, -1, 0.001, 10 },
		state.matrix.mvp,
		program.local[5..16],
		{ 20, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MAD R1.xyz, vertex.color, c[0].x, c[0].y;
DP3 R0.x, R1, R1;
RSQ R0.w, R0.x;
FLR R2.xyz, vertex.normal;
MUL R0.xyz, R2, c[0].z;
MUL R1.xyz, R0.w, R1;
ADD R1.xyz, R1, -R0;
MAD R0.xyz, R1, c[16].x, R0;
MOV R1.x, c[13];
MOV R0.w, c[11];
FRC R2.xyz, vertex.normal;
MOV R1.w, vertex.position;
MUL R1.x, R1, c[14];
MUL R0.w, R0, c[15].x;
MUL R0.w, R0, R1.x;
MAD R1.xyz, R0, R0.w, vertex.position;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[17].y;
MUL R3.y, R3, c[9].x;
MUL R2.xyz, R2, c[17].x;
ADD R1.xyz, R2, c[0].y;
MUL R1.xyz, R1, c[11].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[12];
MUL R0.xy, R0, c[0].w;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[10];
ADD result.texcoord[0].xy, R0, c[12].zwzw;
END
# 36 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 39 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [unity_Scale]
Vector 12 [_MainTex_ST]
Float 13 [V_FR_Global_Control]
Float 14 [V_FR_Fragmentum]
Float 15 [V_FR_DisplaceAmount]
Float 16 [V_FR_RandomizeDisplaceDirection]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_color0 v3
def c17, 2.00000000, -1.00000000, 0.00100000, 10.00000000
def c18, 20.00000000, -1.00000000, 0.50000000, 0
mad r0.xyz, v3, c17.x, c17.y
frc r2.xyz, v2
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul r0.xyz, r0.w, r0
add r1.xyz, v2, -r2
mul r1.xyz, r1, c17.z
add r0.xyz, r0, -r1
mad r0.xyz, r0, c16.x, r1
mov r1.x, c14
mov r0.w, c15.x
mov r1.w, v0
mul r1.x, c13, r1
mul r0.w, c11, r0
mul r0.w, r0, r1.x
mad r1.xyz, r0, r0.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r3.xyz, r0.xyww, c18.z
mul r3.y, r3, c8.x
mad r1.xyz, r2, c18.x, c18.y
mul r1.xyz, r1, c11.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c12
mul r0.xy, r0, c17.w
mad oT5.xy, r3.z, c9.zwzw, r3
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c10
add oT0.xy, r0, c12.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 27 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Global_Control]
Float 116 [V_FR_Fragmentum]
Float 120 [V_FR_DisplaceAmount]
Float 144 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedcclgbcheodfoiikbjihcbkfkbdjmkcloabaaaaaaemagaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
miaeaaaaeaaaabaadcabaaaafjaaaaaeegiocaaaaaaaaaaaakaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadcaaaaaphcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaea
aaaaaaeaaaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaa
acaaaaaadiaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddk
gpbciddkgpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaa
agiacaaaaaaaaaaaajaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaj
icaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaabkiacaaaaaaaaaaaahaaaaaa
diaaaaajbcaabaaaabaaaaaackiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaa
beaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaaf
pccabaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaa
abaaaaaadiaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaa
afaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaeb
aaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaa
abaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
adaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaa
agaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
adaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaa
aaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaa
aeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaa
mgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 27 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
ConstBuffer "$Globals" 160
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Global_Control]
Float 116 [V_FR_Fragmentum]
Float 120 [V_FR_DisplaceAmount]
Float 144 [V_FR_RandomizeDisplaceDirection]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedbndkfplmmjfhdlmjabdhmnppabpleeojabaaaaaafiajaaaaaeaaaaaa
daaaaaaadiadaaaaaiaiaaaaliaiaaaaebgpgodjaaadaaaaaaadaaaaaaacpopp
hiacaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaabaaacaaaaaaaaaaaaaaajaaabaaadaaaaaaaaaa
abaaafaaabaaaeaaaaaaaaaaacaaaaaaabaaafaaaaaaaaaaadaaaaaaaeaaagaa
aaaaaaaaadaaamaaadaaakaaaaaaaaaaadaabeaaabaaanaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafaoaaapkagpbciddkaaaakaebaaaaialpaaaaaaeafbaaaaaf
apaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapja
bpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeabaaahiaaaaaoeiaaoaaffka
aoaakkkaacaaaaadaaaaahiaaaaaoeibacaaoejaafaaaaadabaaahiaabaaoeia
anaappkaafaaaaadacaaahiaabaaffiaalaaoekaaeaaaaaeabaaaliaakaakeka
abaaaaiaacaakeiaaeaaaaaeabaaahoaamaaoekaabaakkiaabaapeiabdaaaaac
abaaadiaabaaoejaafaaaaadabaaadiaabaaoeiaabaaoekaabaaaaacacaaabia
apaaaakaaeaaaaaeaaaaadoaabaaoeiaacaaaaiaabaaookaaeaaaaaeabaaahia
aeaaoejaaoaappkaaoaakkkaceaaaaacacaaahiaabaaoeiaaeaaaaaeabaaahia
aaaaoeiaaoaaaakbacaaoeiaafaaaaadaaaaahiaaaaaoeiaaoaaaakaaeaaaaae
aaaaahiaadaaaakaabaaoeiaaaaaoeiaafaaaaadaaaaaiiaacaaaakaacaaffka
abaaaaacabaaaiiaanaappkaafaaaaadabaaabiaabaappiaacaakkkaafaaaaad
aaaaaiiaaaaappiaabaaaaiaaeaaaaaeaaaaahiaaaaaoeiaaaaappiaaaaaoeja
afaaaaadabaaapiaaaaaffiaahaaoekaaeaaaaaeabaaapiaagaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaaiaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
ajaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiaapaaffkaafaaaaad
abaaaiiaabaaffiaaeaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaafaaoekappppaaaafdeieefcmiaeaaaa
eaaaabaadcabaaaafjaaaaaeegiocaaaaaaaaaaaakaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
dcaaaaaphcaabaaaaaaaaaaaegbcbaaaaeaaaaaaaceaaaaaaaaaaaeaaaaaaaea
aaaaaaeaaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialpaaaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaaebaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaa
diaaaaakhcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaagpbciddkgpbciddk
gpbciddkaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaiaebaaaaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaagiacaaa
aaaaaaaaajaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaajicaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaabkiacaaaaaaaaaaaahaaaaaadiaaaaaj
bcaabaaaabaaaaaackiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaegbcbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaaabaaaaaa
egbcbaaaacaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaaabaaaaaaaceaaaaa
aaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialpaaaaialp
aaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaaamaaaaaaagaabaaa
abaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaaadaaaaaa
aoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaaghccabaaaadaaaaaa
egiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaaegadbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaafmccabaaaaeaaaaaa
kgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaa
jjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapahaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
}
Program "fp" {
SubProgram "opengl " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"!!ARBfp1.0
PARAM c[3] = { state.lightmodel.ambient,
		program.local[1],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
DP3 R1.y, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.y, R1.y;
DP3 R1.x, fragment.texcoord[3], fragment.texcoord[3];
MUL R2.xyz, R1.y, fragment.texcoord[4];
RSQ R1.x, R1.x;
MUL R1.xyz, R1.x, fragment.texcoord[3];
DP3 R1.x, R1, R2;
MAX R1.x, R1, c[2];
MUL R1.xyz, R1.x, c[1];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[2].y;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 14 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
dcl_2d s0
def c2, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
texld r1, t0, s0
dp3_pp r2.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r2.x, r2.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r2.xyz, r2.x, t4
dp3_pp r0.x, r0, r2
max_pp r0.x, r0, c2
mul_pp r0.xyz, r0.x, c1
add r0.xyz, r0, c0
mul r0.xyz, r0, c2.y
mov_pp r0.w, r1
mul_pp r0.xyz, r1, r0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 11 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 96
Vector 32 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedbafhmgnchhkdfecchaalckgnkmlkiofjabaaaaaanmacaaaaadaaaaaa
cmaaaaaaleaaaaaaoiaaaaaaejfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcomabaaaaeaaaaaaahlaaaaaafjaaaaaeegiocaaa
aaaaaaaaadaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaa
aaaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaal
hcaabaaaaaaaaaaaegiccaaaaaaaaaaaacaaaaaaagaabaaaaaaaaaaaegiccaaa
abaaaaaaaeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 11 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 96
Vector 32 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedcfejgajhleniipfjmmljlmfaidekpepdabaaaaaabaaeaaaaaeaaaaaa
daaaaaaagaabaaaafeadaaaanmadaaaaebgpgodjciabaaaaciabaaaaaaacpppp
oiaaaaaaeaaaaaaaacaaciaaaaaaeaaaaaaaeaaaabaaceaaaaaaeaaaaaaaaaaa
aaaaacaaabaaaaaaaaaaaaaaabaaaeaaabaaabaaaaaaaaaaaaacppppfbaaaaaf
acaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacdla
bpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaachlabpaaaaacaaaaaaja
aaaiapkaecaaaaadaaaacpiaaaaaoelaaaaioekaceaaaaacabaachiaabaaoela
ceaaaaacacaachiaacaaoelaaiaaaaadabaacbiaabaaoeiaacaaoeiaafaaaaad
abaaaoiaabaaaaiaaaaablkafiaaaaaeabaaahiaabaaaaiaabaabliaacaaaaka
acaaaaadabaaahiaabaaoeiaabaaoekaacaaaaadabaaahiaabaaoeiaabaaoeia
afaaaaadaaaachiaaaaaoeiaabaaoeiaabaaaaacaaaicpiaaaaaoeiappppaaaa
fdeieefcomabaaaaeaaaaaaahlaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaa
acaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
adaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaalhcaabaaaaaaaaaaa
egiccaaaaaaaaaaaacaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaaj
pcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaa
diaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheoiaaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedkpgkkgmfkifbiafiabhnjhfllomdembkabaaaaaaciacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefccaabaaaaeaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaa
ogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedleldomfefcfkloamkaicmcdmndibnmdbabaaaaaaamadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaaniacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedkpgkkgmfkifbiafiabhnjhfllomdembkabaaaaaaciacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefccaabaaaaeaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaa
ogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedleldomfefcfkloamkaicmcdmndibnmdbabaaaaaaamadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaaniacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"!!ARBfp1.0
PARAM c[3] = { state.lightmodel.ambient,
		program.local[1],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TXP R1.x, fragment.texcoord[5], texture[1], 2D;
DP3 R1.y, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.x, R1.y;
DP3 R1.z, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.z, R1.z;
MUL R1.yzw, R1.z, fragment.texcoord[4].xxyz;
MUL R2.xyz, R2.x, fragment.texcoord[3];
DP3 R1.y, R2, R1.yzww;
MAX R1.y, R1, c[2].x;
MUL R1.x, R1.y, R1;
MUL R1.xyz, R1.x, c[1];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[2].y;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 16 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c2, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
dcl t5
texld r2, t0, s0
texldp r3, t5, s1
dp3_pp r1.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r1.x, r1.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r1.xyz, r1.x, t4
dp3_pp r0.x, r0, r1
max_pp r0.x, r0, c2
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, c1
add r0.xyz, r0, c0
mul r0.xyz, r0, c2.y
mov_pp r0.w, r2
mul_pp r0.xyz, r2, r0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 13 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 160
Vector 96 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedjjealbjfdngppapdnenlbkbanjlbibhjabaaaaaahiadaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaaimaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefchaacaaaaeaaaaaaajmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaah
gcaabaaaaaaaaaaaagbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaa
abaaaaaajgafbaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaa
aaaaaaaaegiccaaaaaaaaaaaagaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaa
aeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 160
Vector 96 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefieceddeinjhaoaffmhhkponokklligoknfnooabaaaaaaaeafaaaaaeaaaaaa
daaaaaaaliabaaaadaaeaaaanaaeaaaaebgpgodjiaabaaaaiaabaaaaaaacpppp
dmabaaaaeeaaaaaaacaacmaaaaaaeeaaaaaaeeaaacaaceaaaaaaeeaaabaaaaaa
aaababaaaaaaagaaabaaaaaaaaaaaaaaabaaaeaaabaaabaaaaaaaaaaaaacpppp
fbaaaaafacaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaia
aaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaachlabpaaaaac
aaaaaaiaadaaaplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapka
agaaaaacaaaaaiiaadaapplaafaaaaadaaaaadiaaaaappiaadaaoelaecaaaaad
aaaacpiaaaaaoeiaaaaioekaecaaaaadabaacpiaaaaaoelaabaioekaceaaaaac
acaachiaabaaoelaceaaaaacadaachiaacaaoelaaiaaaaadaaaacciaacaaoeia
adaaoeiaafaaaaadaaaaabiaaaaaaaiaaaaaffiaafaaaaadacaaahiaaaaaaaia
aaaaoekafiaaaaaeaaaaahiaaaaaffiaacaaoeiaacaaaakaacaaaaadaaaaahia
aaaaoeiaabaaoekaacaaaaadaaaaahiaaaaaoeiaaaaaoeiaafaaaaadabaachia
aaaaoeiaabaaoeiaabaaaaacaaaicpiaabaaoeiappppaaaafdeieefchaacaaaa
eaaaaaaajmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaa
abaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaa
adaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
adaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaahgcaabaaaaaaaaaaa
agbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaaabaaaaaajgafbaaa
aaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaa
aaaaaaaaagaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadiaaaaah
hccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
imaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedidpmogdjgcclmoblifocmgdadknfmopgabaaaaaaeaacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefccaabaaaa
eaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedfjoabechheibchaedljkllgcahkhncfcabaaaaaaceadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaapaacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedidpmogdjgcclmoblifocmgdadknfmopgabaaaaaaeaacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefccaabaaaa
eaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedfjoabechheibchaedljkllgcahkhncfcabaaaaaaceadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaapaacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"!!ARBfp1.0
PARAM c[3] = { state.lightmodel.ambient,
		program.local[1],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
DP3 R1.y, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.y, R1.y;
DP3 R1.x, fragment.texcoord[3], fragment.texcoord[3];
MUL R2.xyz, R1.y, fragment.texcoord[4];
RSQ R1.x, R1.x;
MUL R1.xyz, R1.x, fragment.texcoord[3];
DP3 R1.x, R1, R2;
MAX R1.x, R1, c[2];
MUL R1.xyz, R1.x, c[1];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[2].y;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 14 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 14 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
dcl_2d s0
def c2, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
texld r1, t0, s0
dp3_pp r2.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r2.x, r2.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r2.xyz, r2.x, t4
dp3_pp r0.x, r0, r2
max_pp r0.x, r0, c2
mul_pp r0.xyz, r0.x, c1
add r0.xyz, r0, c0
mul r0.xyz, r0, c2.y
mov_pp r0.w, r1
mul_pp r0.xyz, r1, r0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 11 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 96
Vector 32 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedbafhmgnchhkdfecchaalckgnkmlkiofjabaaaaaanmacaaaaadaaaaaa
cmaaaaaaleaaaaaaoiaaaaaaejfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcomabaaaaeaaaaaaahlaaaaaafjaaaaaeegiocaaa
aaaaaaaaadaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaa
aaaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaal
hcaabaaaaaaaaaaaegiccaaaaaaaaaaaacaaaaaaagaabaaaaaaaaaaaegiccaaa
abaaaaaaaeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 11 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 96
Vector 32 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefiecedcfejgajhleniipfjmmljlmfaidekpepdabaaaaaabaaeaaaaaeaaaaaa
daaaaaaagaabaaaafeadaaaanmadaaaaebgpgodjciabaaaaciabaaaaaaacpppp
oiaaaaaaeaaaaaaaacaaciaaaaaaeaaaaaaaeaaaabaaceaaaaaaeaaaaaaaaaaa
aaaaacaaabaaaaaaaaaaaaaaabaaaeaaabaaabaaaaaaaaaaaaacppppfbaaaaaf
acaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaacdla
bpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaachlabpaaaaacaaaaaaja
aaaiapkaecaaaaadaaaacpiaaaaaoelaaaaioekaceaaaaacabaachiaabaaoela
ceaaaaacacaachiaacaaoelaaiaaaaadabaacbiaabaaoeiaacaaoeiaafaaaaad
abaaaoiaabaaaaiaaaaablkafiaaaaaeabaaahiaabaaaaiaabaabliaacaaaaka
acaaaaadabaaahiaabaaoeiaabaaoekaacaaaaadabaaahiaabaaoeiaabaaoeia
afaaaaadaaaachiaaaaaoeiaabaaoeiaabaaaaacaaaicpiaaaaaoeiappppaaaa
fdeieefcomabaaaaeaaaaaaahlaaaaaafjaaaaaeegiocaaaaaaaaaaaadaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaa
acaaaaaagcbaaaadhcbabaaaadaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
adaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadcaaaaalhcaabaaaaaaaaaaa
egiccaaaaaaaaaaaacaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaaj
pcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaa
diaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheoiaaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaheaaaaaaadaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedkpgkkgmfkifbiafiabhnjhfllomdembkabaaaaaaciacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefccaabaaaaeaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaa
ogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedleldomfefcfkloamkaicmcdmndibnmdbabaaaaaaamadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaaniacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedkpgkkgmfkifbiafiabhnjhfllomdembkabaaaaaaciacaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaaimaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefccaabaaaaeaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaa
ogbkbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedleldomfefcfkloamkaicmcdmndibnmdbabaaaaaaamadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaaniacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "opengl " {
// Stats: 16 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"!!ARBfp1.0
PARAM c[3] = { state.lightmodel.ambient,
		program.local[1],
		{ 0, 2 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TXP R1.x, fragment.texcoord[5], texture[1], 2D;
DP3 R1.y, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.x, R1.y;
DP3 R1.z, fragment.texcoord[4], fragment.texcoord[4];
RSQ R1.z, R1.z;
MUL R1.yzw, R1.z, fragment.texcoord[4].xxyz;
MUL R2.xyz, R2.x, fragment.texcoord[3];
DP3 R1.y, R2, R1.yzww;
MAX R1.y, R1, c[2].x;
MUL R1.x, R1.y, R1;
MUL R1.xyz, R1.x, c[1];
ADD R1.xyz, R1, c[0];
MUL R1.xyz, R1, c[2].y;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 16 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 15 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Vector 0 [glstate_lightmodel_ambient]
Vector 1 [_LightColor0]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c2, 0.00000000, 2.00000000, 0, 0
dcl t0.xy
dcl t3.xyz
dcl t4.xyz
dcl t5
texld r2, t0, s0
texldp r3, t5, s1
dp3_pp r1.x, t4, t4
dp3_pp r0.x, t3, t3
rsq_pp r1.x, r1.x
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t3
mul_pp r1.xyz, r1.x, t4
dp3_pp r0.x, r0, r1
max_pp r0.x, r0, c2
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, c1
add r0.xyz, r0, c0
mul r0.xyz, r0, c2.y
mov_pp r0.w, r2
mul_pp r0.xyz, r2, r0
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 13 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 160
Vector 96 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0
eefiecedjjealbjfdngppapdnenlbkbanjlbibhjabaaaaaahiadaaaaadaaaaaa
cmaaaaaammaaaaaaaaabaaaaejfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaaimaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefchaacaaaaeaaaaaaajmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaadaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaadaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaah
gcaabaaaaaaaaaaaagbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaa
abaaaaaajgafbaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaa
aaaaaaaaegiccaaaaaaaaaaaagaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaa
aeaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 13 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 0
ConstBuffer "$Globals" 160
Vector 96 [_LightColor0]
ConstBuffer "UnityPerFrame" 208
Vector 64 [glstate_lightmodel_ambient]
BindCB  "$Globals" 0
BindCB  "UnityPerFrame" 1
"ps_4_0_level_9_1
eefieceddeinjhaoaffmhhkponokklligoknfnooabaaaaaaaeafaaaaaeaaaaaa
daaaaaaaliabaaaadaaeaaaanaaeaaaaebgpgodjiaabaaaaiaabaaaaaaacpppp
dmabaaaaeeaaaaaaacaacmaaaaaaeeaaaaaaeeaaacaaceaaaaaaeeaaabaaaaaa
aaababaaaaaaagaaabaaaaaaaaaaaaaaabaaaeaaabaaabaaaaaaaaaaaaacpppp
fbaaaaafacaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacaaaaaaia
aaaacdlabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaachlabpaaaaac
aaaaaaiaadaaaplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapka
agaaaaacaaaaaiiaadaapplaafaaaaadaaaaadiaaaaappiaadaaoelaecaaaaad
aaaacpiaaaaaoeiaaaaioekaecaaaaadabaacpiaaaaaoelaabaioekaceaaaaac
acaachiaabaaoelaceaaaaacadaachiaacaaoelaaiaaaaadaaaacciaacaaoeia
adaaoeiaafaaaaadaaaaabiaaaaaaaiaaaaaffiaafaaaaadacaaahiaaaaaaaia
aaaaoekafiaaaaaeaaaaahiaaaaaffiaacaaoeiaacaaaakaacaaaaadaaaaahia
aaaaoeiaabaaoekaacaaaaadaaaaahiaaaaaoeiaaaaaoeiaafaaaaadabaachia
aaaaoeiaabaaoeiaabaaaaacaaaicpiaabaaoeiappppaaaafdeieefchaacaaaa
eaaaaaaajmaaaaaafjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaa
abaaaaaaafaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaa
adaaaaaagcbaaaadlcbabaaaaeaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
adaaaaaaegbcbaaaadaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaahgcaabaaaaaaaaaaa
agbbbaaaaeaaaaaapgbpbaaaaeaaaaaaefaaaaajpcaabaaaabaaaaaajgafbaaa
aaaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaalhcaabaaaaaaaaaaaegiccaaa
aaaaaaaaagaaaaaaagaabaaaaaaaaaaaegiccaaaabaaaaaaaeaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadiaaaaah
hccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheojiaaaaaaafaaaaaaaiaaaaaa
iaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahahaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
imaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapalaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedidpmogdjgcclmoblifocmgdadknfmopgabaaaaaaeaacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefccaabaaaa
eaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedfjoabechheibchaedljkllgcahkhncfcabaaaaaaceadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaapaacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"!!ARBfp1.0
PARAM c[1] = { { 8 } };
TEMP R0;
TEMP R1;
TEX R0, fragment.texcoord[0], texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[1], 2D;
MUL R1.xyz, R1.w, R1;
MUL R0.xyz, R1, R0;
MUL result.color.xyz, R0, c[0].x;
MOV result.color.w, R0;
END
# 6 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 5 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_2_0
dcl_2d s0
dcl_2d s1
def c0, 8.00000000, 0, 0, 0
dcl t0.xy
dcl t1.xy
texld r0, t1, s1
texld r1, t0, s0
mul_pp r0.xyz, r0.w, r0
mul_pp r0.xyz, r0, r1
mov_pp r0.w, r1
mul_pp r0.xyz, r0, c0.x
mov_pp oC0, r0
"
}
SubProgram "d3d11 " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0
eefiecedidpmogdjgcclmoblifocmgdadknfmopgabaaaaaaeaacaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaa
amamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaaaaaakeaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaakeaaaaaaafaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefccaabaaaa
eaaaaaaaeiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacacaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
pgapbaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaaaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 3 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [unity_Lightmap] 2D 1
"ps_4_0_level_9_1
eefiecedfjoabechheibchaedljkllgcahkhncfcabaaaaaaceadaaaaaeaaaaaa
daaaaaaabaabaaaadiacaaaapaacaaaaebgpgodjniaaaaaaniaaaaaaaaacpppp
kmaaaaaacmaaaaaaaaaacmaaaaaacmaaaaaacmaaacaaceaaaaaacmaaaaaaaaaa
abababaaaaacppppfbaaaaafaaaaapkaaaaaaaebaaaaaaaaaaaaaaaaaaaaaaaa
bpaaaaacaaaaaaiaaaaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaabaaaaacaaaacdiaaaaabllaecaaaaadaaaacpiaaaaaoeiaabaioeka
ecaaaaadabaacpiaaaaaoelaaaaioekaafaaaaadaaaaciiaaaaappiaaaaaaaka
afaaaaadaaaachiaaaaaoeiaaaaappiaafaaaaadabaachiaaaaaoeiaabaaoeia
abaaaaacaaaicpiaabaaoeiappppaaaafdeieefccaabaaaaeaaaaaaaeiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadmcbabaaaabaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
acaaaaaaefaaaaajpcaabaaaaaaaaaaaogbkbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaebdiaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaadkaabaaaabaaaaaadoaaaaabejfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamamaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaaaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaaaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
}
 }
}
CustomEditor "FragmentumMaterial_Editor"
}