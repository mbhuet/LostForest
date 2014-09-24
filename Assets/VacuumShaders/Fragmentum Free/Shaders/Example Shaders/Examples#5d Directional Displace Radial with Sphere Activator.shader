// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 269.1KB

Shader "VacuumShaders/Fragmentum/Examples/5d Directional Displace Radial with Sphere Activator" {
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

//Free V_FR_FRAGMENTS_SCALE
//Free V_FR_ACTIVATOR_SPHERE
//Free V_FR_DISPLACE_RADIAL

//DO NOT MODIFY !!! The End

 // Stats for Vertex shader:
 //       d3d11 : 30 avg math (9..52)
 //    d3d11_9x : 30 avg math (9..52)
 //        d3d9 : 48 avg math (10..87)
 //      opengl : 43 avg math (10..77)
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 176
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
// Stats: 71 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_Scale]
Vector 15 [_MainTex_ST]
Float 16 [V_FR_Fragmentum]
Float 17 [V_FR_DisplaceAmount]
Vector 18 [V_FR_DisplaceDirectionObjectPosition]
Float 19 [V_FR_FragmentsScale]
Float 20 [V_FR_DistanceToActivator]
Vector 21 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[23] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..21],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[21];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[20].x;
MIN R0.z, R0.y, c[21].w;
MOV R0.x, c[21].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[21];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[21].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[16];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[19].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[18];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[14].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[17];
MUL R2.y, R2.x, c[16].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
MUL R1.xyz, R0.w, R1;
RCP R1.w, R1.w;
MIN R1.w, R1, R2.y;
MAD R0.xyz, R1, R1.w, R0;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[22].x;
MUL R1.xyz, R1, c[14].w;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[15];
MUL R0.xy, R0, c[0].z;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[13];
ADD result.texcoord[0].xy, R0, c[15].zwzw;
END
# 71 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 81 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_WorldSpaceLightPos0]
Vector 13 [unity_Scale]
Vector 14 [_MainTex_ST]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Vector 17 [V_FR_DisplaceDirectionObjectPosition]
Float 18 [V_FR_FragmentsScale]
Float 19 [V_FR_DistanceToActivator]
Vector 20 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c21, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c22, 20.00000000, -1.00000000, 0, 0
mov r1.w, c21.x
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c20
dp3 r0.z, r1, r1
mov r0.w, c20
slt r0.x, c21.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c21, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c21.x
add r0.w, -r0.y, c21.x
add r0.z, r0, c19.x
mul r0.w, r0.z, r0
min r0.z, r0, c20.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c21, r0.x
sge r0.x, r0, c21.y
mul r0.x, r0, r0.y
abs r0.y, c20.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c21.y, r0
add r0.w, -r0.z, c20
add r0.z, -r0.x, c21.x
mul r0.z, r0, r0.w
max r0.y, r0, c21
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c15
min r0.x, r0, c21
mov r0.y, c18.x
max r0.x, r0, c21.y
add r0.y, c21.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c21
mov r0.xyz, v3
max r1.x, r1, c21.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mov r1.xyz, c17
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c13.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c16
mul r2.x, c13.w, r2
mul r2.y, r2.x, c15.x
add r1.xyz, r1, -v3
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
mul r1.xyz, r0.w, r1
rcp r1.w, r1.w
min r1.w, r1, r2.y
mad r0.xyz, r1, r1.w, r0
mov r0.w, v0
frc r1.xyz, v2
mad r1.xyz, r1, c22.x, c22.y
mul r1.xyz, r1, c13.w
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c14
mul r0.xy, r0, c21.w
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedjiclbelladohlcnckiophfmjhdkncdklabaaaaaakmaiaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefceaahaaaaeaaaabaanaabaaaafjaaaaaeegiocaaaaaaaaaaa
ahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaj
ccaabaaaaaaaaaaabkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaa
diaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaa
diaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaaj
ncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaaadaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaaeaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaaaaaaaaai
hcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaabdaaaaaadcaaaaal
hcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaaigadbaia
ebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
acaaaaaabeaaaaaaegbcbaiaebaaaaaaadaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaa
baaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
icaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaa
abaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaa
fgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
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
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedofmninpfoehibfnigglpjbljcigohobcabaaaaaafaanaaaaaeaaaaaa
daaaaaaanaaeaaaabiamaaaamiamaaaaebgpgodjjiaeaaaajiaeaaaaaaacpopp
deaeaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaaeaaacaaaaaaaaaaabaaaaaaabaaagaaaaaaaaaa
acaaaaaaaeaaahaaaaaaaaaaacaaamaaajaaalaaaaaaaaaaaaaaaaaaaaacpopp
fbaaaaafbeaaapkaaaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbfaaapka
aaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahiaaaaaoeiabeaaaakabeaaffka
afaaaaadaaaaahiaaaaaoeiabdaappkaafaaaaadabaaahiaaaaaffiaamaaoeka
aeaaaaaeaaaaaliaalaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaanaaoeka
aaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeia
abaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabfaaaaka
aaaaooiaafaaaaadaaaaahiaadaaffjaamaaoekaaeaaaaaeaaaaahiaalaaoeka
adaaaajaaaaaoeiaaeaaaaaeaaaaahiaanaaoekaadaakkjaaaaaoeiaacaaaaad
aaaaahiaaaaaoeiaaoaaoekaacaaaaadaaaaahiaaaaaoeiaafaaoekbaiaaaaad
aaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabiaaaaaaaiaagaaaaacaaaaabia
aaaaaaiaacaaaaadaaaaabiaaaaaaaiaaeaaffkacdaaaaacaaaaaciaafaappka
acaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaadaaaaabiaaaaaaaiaafaappka
acaaaaadaaaaabiaaaaaaaibafaappkaalaaaaadaaaaaciaaaaaffiabeaakkka
abaaaaacabaaagiabeaaoekaamaaaaadaaaaaeiaabaakkiaafaappkabcaaaaae
abaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaacaaaaaiiabdaappkaafaaaaad
aaaaabiaaaaappiaacaaffkaafaaaaadaaaaabiaaaaaaaiaacaaaakaafaaaaad
aaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaaciaabaaaaiaacaaaakaalaaaaad
aaaaaciaaaaaffiabeaakkkaakaaaaadaaaaaciaaaaaffiabeaappkaacaaaaad
aaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkiabeaappka
alaaaaadaaaaaciaaaaaffiabeaakkkaabaaaaacabaaahiaadaaoejaacaaaaad
abaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffiaadaajaja
abaaaaacabaaahiaadaaoekaafaaaaadacaaahiaabaaffiabaaaoekaaeaaaaae
abaaaliaapaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabbaaoekaabaakkia
abaapeiaacaaaaadabaaahiaabaaoeiabcaaoekaaeaaaaaeacaaahiaabaaoeia
bdaappkaaaaapjibaeaaaaaeabaaahiaabaaoeiabdaappkaadaaoejbceaaaaac
adaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeiaacaaoeiaahaaaaacabaaabia
abaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaadaaaaabiaaaaaaaiaabaaaaia
aeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffia
aiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
ajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaagaaoekappppaaaafdeieefceaahaaaaeaaaabaanaabaaaa
fjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaa
adaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaaaaaaaaaagaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaa
ddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaa
aaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaa
agaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaa
agaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaa
agaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaadaaaaaa
dkiacaaaacaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaadaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaa
abeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaa
aaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
aeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaaeaaaaaa
egacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaa
acaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaa
acaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaa
egacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaadaaaaaa
baaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaf
icaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaai
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
adaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
heaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 72 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_Scale]
Vector 15 [_MainTex_ST]
Vector 16 [unity_LightmapST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[22];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[21].x;
MIN R0.z, R0.y, c[22].w;
MOV R0.x, c[22].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[22];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[22].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[17];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[20].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[19];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[14].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MUL R2.y, R2.x, c[17].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
MUL R1.xyz, R0.w, R1;
RCP R1.w, R1.w;
MIN R1.w, R1, R2.y;
MAD R0.xyz, R1, R1.w, R0;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[23].x;
MUL R1.xyz, R1, c[14].w;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[15];
MUL R0.xy, R0, c[0].z;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[13];
ADD result.texcoord[0].xy, R0, c[15].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[16], c[16].zwzw;
END
# 72 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 82 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_WorldSpaceLightPos0]
Vector 13 [unity_Scale]
Vector 14 [_MainTex_ST]
Vector 15 [unity_LightmapST]
Float 16 [V_FR_Fragmentum]
Float 17 [V_FR_DisplaceAmount]
Vector 18 [V_FR_DisplaceDirectionObjectPosition]
Float 19 [V_FR_FragmentsScale]
Float 20 [V_FR_DistanceToActivator]
Vector 21 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c22, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c23, 20.00000000, -1.00000000, 0, 0
mov r1.w, c22.x
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c21
dp3 r0.z, r1, r1
mov r0.w, c21
slt r0.x, c22.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c22, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c22.x
add r0.w, -r0.y, c22.x
add r0.z, r0, c20.x
mul r0.w, r0.z, r0
min r0.z, r0, c21.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c22, r0.x
sge r0.x, r0, c22.y
mul r0.x, r0, r0.y
abs r0.y, c21.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c22.y, r0
add r0.w, -r0.z, c21
add r0.z, -r0.x, c22.x
mul r0.z, r0, r0.w
max r0.y, r0, c22
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c16
min r0.x, r0, c22
mov r0.y, c19.x
max r0.x, r0, c22.y
add r0.y, c22.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c22
mov r0.xyz, v4
max r1.x, r1, c22.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mov r1.xyz, c18
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c13.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c17
mul r2.x, c13.w, r2
mul r2.y, r2.x, c16.x
add r1.xyz, r1, -v4
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
mul r1.xyz, r0.w, r1
rcp r1.w, r1.w
min r1.w, r1, r2.y
mad r0.xyz, r1, r1.w, r0
mov r0.w, v0
frc r1.xyz, v3
mad r1.xyz, r1, c23.x, c23.y
mul r1.xyz, r1, c13.w
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c14
mul r0.xy, r0, c22.w
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 49 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecediemoiokolnlipkcgbjgmkilbockadgnbabaaaaaacaajaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcieahaaaaeaaaabaa
obabaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaa
acaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaa
aaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaa
aaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaa
egiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaa
baaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaa
abaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaa
bdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaa
beaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
dkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaa
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
// Stats: 49 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedhmfmnmlgcgikbkjoboefaekplpkmoanpabaaaaaaoeanaaaaaeaaaaaa
daaaaaaapaaeaaaahmamaaaaeeanaaaaebgpgodjliaeaaaaliaeaaaaaaacpopp
feaeaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaaeaaadaaaaaaaaaaabaaaaaaabaaahaaaaaaaaaa
acaaaaaaaeaaaiaaaaaaaaaaacaaamaaajaaamaaaaaaaaaaaaaaaaaaaaacpopp
fbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbgaaapka
aaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahia
aaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahiaaaaaoeiabeaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaae
aaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaahiaaeaaffjaanaaoekaaeaaaaaeaaaaahiaamaaoeka
aeaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoekaaeaakkjaaaaaoeiaacaaaaad
aaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbaiaaaaad
aaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabiaaaaaaaiaagaaaaacaaaaabia
aaaaaaiaacaaaaadaaaaabiaaaaaaaiaafaaffkacdaaaaacaaaaaciaagaappka
acaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaadaaaaabiaaaaaaaiaagaappka
acaaaaadaaaaabiaaaaaaaibagaappkaalaaaaadaaaaaciaaaaaffiabfaakkka
abaaaaacabaaagiabfaaoekaamaaaaadaaaaaeiaabaakkiaagaappkabcaaaaae
abaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaacaaaaaiiabeaappkaafaaaaad
aaaaabiaaaaappiaadaaffkaafaaaaadaaaaabiaaaaaaaiaadaaaakaafaaaaad
aaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaaciaabaaaaiaadaaaakaalaaaaad
aaaaaciaaaaaffiabfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaacaaaaad
aaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkiabfaappka
alaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoejaacaaaaad
abaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffiaaeaajaja
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabbaaoekaaeaaaaae
abaaaliabaaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabcaaoekaabaakkia
abaapeiaacaaaaadabaaahiaabaaoeiabdaaoekaaeaaaaaeacaaahiaabaaoeia
beaappkaaaaapjibaeaaaaaeabaaahiaabaaoeiabeaappkaaeaaoejbceaaaaac
adaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeiaacaaoeiaahaaaaacabaaabia
abaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaadaaaaabiaaaaaaaiaabaaaaia
aeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffia
ajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
akaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaahaaoekappppaaaafdeieefcieahaaaaeaaaabaaobabaaaa
fjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
fpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaa
aaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaa
apaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
aaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaa
aaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaai
ecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaaj
bcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaa
dicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaa
aaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialp
dcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaa
aaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaa
dcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaa
aeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaa
acaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaa
agiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaa
aaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaabdaaaaaa
dcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaa
igadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaahicaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaa
dkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaa
abaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaa
pgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
abaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
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
apahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 72 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_Scale]
Vector 15 [_MainTex_ST]
Vector 16 [unity_LightmapST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[22];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[21].x;
MIN R0.z, R0.y, c[22].w;
MOV R0.x, c[22].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[22];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[22].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[17];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[20].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[19];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[14].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MUL R2.y, R2.x, c[17].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
MUL R1.xyz, R0.w, R1;
RCP R1.w, R1.w;
MIN R1.w, R1, R2.y;
MAD R0.xyz, R1, R1.w, R0;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[23].x;
MUL R1.xyz, R1, c[14].w;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[15];
MUL R0.xy, R0, c[0].z;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[13];
ADD result.texcoord[0].xy, R0, c[15].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[16], c[16].zwzw;
END
# 72 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 82 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_WorldSpaceLightPos0]
Vector 13 [unity_Scale]
Vector 14 [_MainTex_ST]
Vector 15 [unity_LightmapST]
Float 16 [V_FR_Fragmentum]
Float 17 [V_FR_DisplaceAmount]
Vector 18 [V_FR_DisplaceDirectionObjectPosition]
Float 19 [V_FR_FragmentsScale]
Float 20 [V_FR_DistanceToActivator]
Vector 21 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c22, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c23, 20.00000000, -1.00000000, 0, 0
mov r1.w, c22.x
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c21
dp3 r0.z, r1, r1
mov r0.w, c21
slt r0.x, c22.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c22, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c22.x
add r0.w, -r0.y, c22.x
add r0.z, r0, c20.x
mul r0.w, r0.z, r0
min r0.z, r0, c21.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c22, r0.x
sge r0.x, r0, c22.y
mul r0.x, r0, r0.y
abs r0.y, c21.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c22.y, r0
add r0.w, -r0.z, c21
add r0.z, -r0.x, c22.x
mul r0.z, r0, r0.w
max r0.y, r0, c22
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c16
min r0.x, r0, c22
mov r0.y, c19.x
max r0.x, r0, c22.y
add r0.y, c22.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c22
mov r0.xyz, v4
max r1.x, r1, c22.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mov r1.xyz, c18
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c13.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c17
mul r2.x, c13.w, r2
mul r2.y, r2.x, c16.x
add r1.xyz, r1, -v4
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
mul r1.xyz, r0.w, r1
rcp r1.w, r1.w
min r1.w, r1, r2.y
mad r0.xyz, r1, r1.w, r0
mov r0.w, v0
frc r1.xyz, v3
mad r1.xyz, r1, c23.x, c23.y
mul r1.xyz, r1, c13.w
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c14
mul r0.xy, r0, c22.w
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 49 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecediemoiokolnlipkcgbjgmkilbockadgnbabaaaaaacaajaaaaadaaaaaa
cmaaaaaapeaaaaaajeabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaaimaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcieahaaaaeaaaabaa
obabaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaa
acaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaa
aaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaa
aaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaa
egiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaa
baaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaa
abaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaa
bdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaa
beaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
dkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaa
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
// Stats: 49 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedhmfmnmlgcgikbkjoboefaekplpkmoanpabaaaaaaoeanaaaaaeaaaaaa
daaaaaaapaaeaaaahmamaaaaeeanaaaaebgpgodjliaeaaaaliaeaaaaaaacpopp
feaeaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaaeaaadaaaaaaaaaaabaaaaaaabaaahaaaaaaaaaa
acaaaaaaaeaaaiaaaaaaaaaaacaaamaaajaaamaaaaaaaaaaaaaaaaaaaaacpopp
fbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbgaaapka
aaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahia
aaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahiaaaaaoeiabeaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaae
aaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaaeaaaaamoaacaabejaacaabeka
acaalekaafaaaaadaaaaahiaaeaaffjaanaaoekaaeaaaaaeaaaaahiaamaaoeka
aeaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoekaaeaakkjaaaaaoeiaacaaaaad
aaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbaiaaaaad
aaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabiaaaaaaaiaagaaaaacaaaaabia
aaaaaaiaacaaaaadaaaaabiaaaaaaaiaafaaffkacdaaaaacaaaaaciaagaappka
acaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaadaaaaabiaaaaaaaiaagaappka
acaaaaadaaaaabiaaaaaaaibagaappkaalaaaaadaaaaaciaaaaaffiabfaakkka
abaaaaacabaaagiabfaaoekaamaaaaadaaaaaeiaabaakkiaagaappkabcaaaaae
abaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaacaaaaaiiabeaappkaafaaaaad
aaaaabiaaaaappiaadaaffkaafaaaaadaaaaabiaaaaaaaiaadaaaakaafaaaaad
aaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaaciaabaaaaiaadaaaakaalaaaaad
aaaaaciaaaaaffiabfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaacaaaaad
aaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkiabfaappka
alaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoejaacaaaaad
abaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffiaaeaajaja
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabbaaoekaaeaaaaae
abaaaliabaaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabcaaoekaabaakkia
abaapeiaacaaaaadabaaahiaabaaoeiabdaaoekaaeaaaaaeacaaahiaabaaoeia
beaappkaaaaapjibaeaaaaaeabaaahiaabaaoeiabeaappkaaeaaoejbceaaaaac
adaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeiaacaaoeiaahaaaaacabaaabia
abaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaadaaaaabiaaaaaaaiaabaaaaia
aeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffia
ajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
akaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaahaaoekappppaaaafdeieefcieahaaaaeaaaabaaobabaaaa
fjaaaaaeegiocaaaaaaaaaaaaiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
fpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
dccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaa
aaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaa
apaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
aaaaaaaaahaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaaddaaaaaiccaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaahaaaaaadeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaa
aaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadbaaaaai
ecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaahaaaaaadhaaaaaj
bcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaa
dicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaa
aaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialp
dcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaa
aaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaa
dcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaa
aeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaa
acaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaa
agiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaa
aaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaabdaaaaaa
dcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaa
igadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaahicaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaa
dkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaa
abaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaa
pgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaa
abaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaa
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
apahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdej
feejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepem
epfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
adamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "opengl " {
// Stats: 76 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_ProjectionParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[22];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[21].x;
MIN R0.z, R0.y, c[22].w;
MOV R0.x, c[22].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[22];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[22].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[17];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[20].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[19];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[15].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[15].w;
MUL R2.x, R2, c[18];
MUL R2.y, R2.x, c[17].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
RCP R1.w, R1.w;
MIN R2.x, R1.w, R2.y;
MUL R1.xyz, R0.w, R1;
MAD R1.xyz, R1, R2.x, R0;
MOV R1.w, vertex.position;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[23].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[23].x;
MUL R1.xyz, R1, c[15].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[16];
MUL R0.xy, R0, c[0].z;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[14];
ADD result.texcoord[0].xy, R0, c[16].zwzw;
END
# 76 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 86 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0.50000000, 0
mov r1.w, c23.x
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c22
dp3 r0.z, r1, r1
mov r0.w, c22
slt r0.x, c23.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c23, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c23.x
add r0.w, -r0.y, c23.x
add r0.z, r0, c21.x
mul r0.w, r0.z, r0
min r0.z, r0, c22.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c23, r0.x
sge r0.x, r0, c23.y
mul r0.x, r0, r0.y
abs r0.y, c22.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c23.y, r0
add r0.w, -r0.z, c22
add r0.z, -r0.x, c23.x
mul r0.z, r0, r0.w
max r0.y, r0, c23
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c17
min r0.x, r0, c23
mov r0.y, c20.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v3
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mov r1.xyz, c19
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c15.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c18
mul r2.x, c15.w, r2
mul r2.y, r2.x, c17.x
add r1.xyz, r1, -v3
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
rcp r1.w, r1.w
min r2.x, r1.w, r2.y
mul r1.xyz, r0.w, r1
mad r1.xyz, r1, r2.x, r0
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c24.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v2
mad r1.xyz, r2, c24.x, c24.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c23.w
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c14
add oT0.xy, r0, c16.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedcclgmacgpmnfjbdhfflomnbpopollomgabaaaaaagmajaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
oiahaaaaeaaaabaapkabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
adaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaa
aaaaaaaaajaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaia
mbaaaaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaa
dkiacaaaaaaaaaaaakaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaa
dkiacaaaaaaaaaaaakaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaa
aaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahccaabaaaaaaaaaaa
akaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaajaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaa
abaaaaaaagaabaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaaiaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaaegiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaal
hcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaia
ebaaaaaaadaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaa
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
// Stats: 51 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedgcbbflmfckcdadiinkjdbdmpfilkalibabaaaaaafiaoaaaaaeaaaaaa
daaaaaaabiafaaaaaianaaaalianaaaaebgpgodjoaaeaaaaoaaeaaaaaaacpopp
haaeaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaaeaaacaaaaaaaaaaabaaafaaabaaagaaaaaaaaaa
acaaaaaaabaaahaaaaaaaaaaadaaaaaaaeaaaiaaaaaaaaaaadaaamaaajaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahia
aaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahiaaaaaoeiabeaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacabaaabiabgaaaakaaeaaaaae
aaaaadoaaaaaoeiaabaaaaiaabaaookaafaaaaadaaaaahiaadaaffjaanaaoeka
aeaaaaaeaaaaahiaamaaoekaadaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoeka
adaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahia
aaaaoeiaafaaoekbaiaaaaadaaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabia
aaaaaaiaagaaaaacaaaaabiaaaaaaaiaacaaaaadaaaaabiaaaaaaaiaaeaaffka
cdaaaaacaaaaaciaafaappkaacaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaad
aaaaabiaaaaaaaiaafaappkaacaaaaadaaaaabiaaaaaaaibafaappkaalaaaaad
aaaaaciaaaaaffiabfaakkkaabaaaaacabaaagiabfaaoekaamaaaaadaaaaaeia
abaakkiaafaappkabcaaaaaeabaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaac
aaaaaiiabeaappkaafaaaaadaaaaabiaaaaappiaacaaffkaafaaaaadaaaaabia
aaaaaaiaacaaaakaafaaaaadaaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaacia
abaaaaiaacaaaakaalaaaaadaaaaaciaaaaaffiabfaakkkaakaaaaadaaaaacia
aaaaffiabfaappkaacaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaacia
aaaaffiaaaaakkiabfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaac
abaaahiaadaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoia
abaajaiaaaaaffiaadaajajaabaaaaacabaaahiaadaaoekaafaaaaadacaaahia
abaaffiabbaaoekaaeaaaaaeabaaaliabaaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabcaaoekaabaakkiaabaapeiaacaaaaadabaaahiaabaaoeiabdaaoeka
aeaaaaaeacaaahiaabaaoeiabeaappkaaaaapjibaeaaaaaeabaaahiaabaaoeia
beaappkaadaaoejbceaaaaacadaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeia
acaaoeiaahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaad
aaaaabiaaaaaaaiaabaaaaiaaeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjia
afaaaaadabaaapiaaaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
alaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabgaaffkaafaaaaad
abaaaiiaabaaffiaagaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaahaaoekappppaaaafdeieefcoiahaaaa
eaaaabaapkabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaadaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaa
ajaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaa
akaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaa
aaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaa
ahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
aaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
ajaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaa
agaabaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
aiaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaa
abaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaiaebaaaaaa
adaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaa
elaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaa
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
jjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheojiaaaaaa
afaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
imaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaaadaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
adaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 77 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_ProjectionParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Vector 17 [unity_LightmapST]
Float 18 [V_FR_Fragmentum]
Float 19 [V_FR_DisplaceAmount]
Vector 20 [V_FR_DisplaceDirectionObjectPosition]
Float 21 [V_FR_FragmentsScale]
Float 22 [V_FR_DistanceToActivator]
Vector 23 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[23];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[22].x;
MIN R0.z, R0.y, c[23].w;
MOV R0.x, c[23].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[23];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[23].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[18];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[21].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[20];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[15].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[15].w;
MUL R2.x, R2, c[19];
MUL R2.y, R2.x, c[18].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
RCP R1.w, R1.w;
MIN R2.x, R1.w, R2.y;
MUL R1.xyz, R0.w, R1;
MAD R1.xyz, R1, R2.x, R0;
MOV R1.w, vertex.position;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[24].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[24].x;
MUL R1.xyz, R1, c[15].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[16];
MUL R0.xy, R0, c[0].z;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[14];
ADD result.texcoord[0].xy, R0, c[16].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[17], c[17].zwzw;
END
# 77 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 87 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Vector 17 [unity_LightmapST]
Float 18 [V_FR_Fragmentum]
Float 19 [V_FR_DisplaceAmount]
Vector 20 [V_FR_DisplaceDirectionObjectPosition]
Float 21 [V_FR_FragmentsScale]
Float 22 [V_FR_DistanceToActivator]
Vector 23 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c24, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c25, 20.00000000, -1.00000000, 0.50000000, 0
mov r1.w, c24.x
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c23
dp3 r0.z, r1, r1
mov r0.w, c23
slt r0.x, c24.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c24, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c24.x
add r0.w, -r0.y, c24.x
add r0.z, r0, c22.x
mul r0.w, r0.z, r0
min r0.z, r0, c23.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c24, r0.x
sge r0.x, r0, c24.y
mul r0.x, r0, r0.y
abs r0.y, c23.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c24.y, r0
add r0.w, -r0.z, c23
add r0.z, -r0.x, c24.x
mul r0.z, r0, r0.w
max r0.y, r0, c24
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c18
min r0.x, r0, c24
mov r0.y, c21.x
max r0.x, r0, c24.y
add r0.y, c24.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c24
mov r0.xyz, v4
max r1.x, r1, c24.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mov r1.xyz, c20
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c15.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c19
mul r2.x, c15.w, r2
mul r2.y, r2.x, c18.x
add r1.xyz, r1, -v4
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
rcp r1.w, r1.w
min r2.x, r1.w, r2.y
mul r1.xyz, r0.w, r1
mad r1.xyz, r1, r2.x, r0
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c25.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c25.x, c25.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c24.w
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c14
add oT0.xy, r0, c16.zwzw
mad oT1.xy, v2, c17, c17.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 52 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecednfgpakmpocofbkhkdpghddkmmchgliaiabaaaaaaoaajaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefccmaiaaaaeaaaabaaalacaaaafjaaaaae
egiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaa
aaaaaaaabkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaai
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaah
ccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajncaabaaa
aaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
hcaabaaaabaaaaaafgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaa
bcaaaaaakgikcaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaa
acaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
ddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaa
aaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
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
// Stats: 52 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedokamnkmkobgpkgpbpppaiffolhndfchiabaaaaaaomaoaaaaaeaaaaaa
daaaaaaadiafaaaagmanaaaadeaoaaaaebgpgodjaaafaaaaaaafaaaaaaacpopp
jaaeaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaaeaaadaaaaaaaaaaabaaafaaabaaahaaaaaaaaaa
acaaaaaaabaaaiaaaaaaaaaaadaaaaaaaeaaajaaaaaaaaaaadaaamaaajaaanaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaakabgaaffkaafaaaaadaaaaahia
aaaaoeiabfaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
abaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeiaabaaaaiaabaaookaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbaiaaaaadaaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabia
aaaaaaiaagaaaaacaaaaabiaaaaaaaiaacaaaaadaaaaabiaaaaaaaiaafaaffka
cdaaaaacaaaaaciaagaappkaacaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaad
aaaaabiaaaaaaaiaagaappkaacaaaaadaaaaabiaaaaaaaibagaappkaalaaaaad
aaaaaciaaaaaffiabgaakkkaabaaaaacabaaagiabgaaoekaamaaaaadaaaaaeia
abaakkiaagaappkabcaaaaaeabaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaac
aaaaaiiabfaappkaafaaaaadaaaaabiaaaaappiaadaaffkaafaaaaadaaaaabia
aaaaaaiaadaaaakaafaaaaadaaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaacia
abaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaacia
aaaaffiabgaappkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaacia
aaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkkaabaaaaac
abaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoia
abaajaiaaaaaffiaaeaajajaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabcaaoekaaeaaaaaeabaaaliabbaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabdaaoekaabaakkiaabaapeiaacaaaaadabaaahiaabaaoeiabeaaoeka
aeaaaaaeacaaahiaabaaoeiabfaappkaaaaapjibaeaaaaaeabaaahiaabaaoeia
bfaappkaaeaaoejbceaaaaacadaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeia
acaaoeiaahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaad
aaaaabiaaaaaaaiaabaaaaiaaeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjia
afaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
amaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabhaaffkaafaaaaad
abaaaiiaabaaffiaahaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaafdeieefccmaiaaaa
eaaaabaaalacaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaadkiacaaa
adaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaa
aaaaaaaaaiaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaa
aaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaa
aaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaajaaaaaa
egiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaa
baaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaadaaaaaa
bdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
dkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaa
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
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 77 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_ProjectionParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Vector 17 [unity_LightmapST]
Float 18 [V_FR_Fragmentum]
Float 19 [V_FR_DisplaceAmount]
Vector 20 [V_FR_DisplaceDirectionObjectPosition]
Float 21 [V_FR_FragmentsScale]
Float 22 [V_FR_DistanceToActivator]
Vector 23 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[23];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[22].x;
MIN R0.z, R0.y, c[23].w;
MOV R0.x, c[23].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[23];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[23].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[18];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[21].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[20];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[15].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[15].w;
MUL R2.x, R2, c[19];
MUL R2.y, R2.x, c[18].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
RCP R1.w, R1.w;
MIN R2.x, R1.w, R2.y;
MUL R1.xyz, R0.w, R1;
MAD R1.xyz, R1, R2.x, R0;
MOV R1.w, vertex.position;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[24].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[24].x;
MUL R1.xyz, R1, c[15].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[16];
MUL R0.xy, R0, c[0].z;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[14];
ADD result.texcoord[0].xy, R0, c[16].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[17], c[17].zwzw;
END
# 77 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 87 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Vector 17 [unity_LightmapST]
Float 18 [V_FR_Fragmentum]
Float 19 [V_FR_DisplaceAmount]
Vector 20 [V_FR_DisplaceDirectionObjectPosition]
Float 21 [V_FR_FragmentsScale]
Float 22 [V_FR_DistanceToActivator]
Vector 23 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c24, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c25, 20.00000000, -1.00000000, 0.50000000, 0
mov r1.w, c24.x
mov r1.xyz, v4
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c23
dp3 r0.z, r1, r1
mov r0.w, c23
slt r0.x, c24.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c24, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c24.x
add r0.w, -r0.y, c24.x
add r0.z, r0, c22.x
mul r0.w, r0.z, r0
min r0.z, r0, c23.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c24, r0.x
sge r0.x, r0, c24.y
mul r0.x, r0, r0.y
abs r0.y, c23.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c24.y, r0
add r0.w, -r0.z, c23
add r0.z, -r0.x, c24.x
mul r0.z, r0, r0.w
max r0.y, r0, c24
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c18
min r0.x, r0, c24
mov r0.y, c21.x
max r0.x, r0, c24.y
add r0.y, c24.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c24
mov r0.xyz, v4
max r1.x, r1, c24.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mov r1.xyz, c20
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c15.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c19
mul r2.x, c15.w, r2
mul r2.y, r2.x, c18.x
add r1.xyz, r1, -v4
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
rcp r1.w, r1.w
min r2.x, r1.w, r2.y
mul r1.xyz, r0.w, r1
mad r1.xyz, r1, r2.x, r0
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c25.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c25.x, c25.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c24.w
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c14
add oT0.xy, r0, c16.zwzw
mad oT1.xy, v2, c17, c17.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 52 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecednfgpakmpocofbkhkdpghddkmmchgliaiabaaaaaaoaajaaaaadaaaaaa
cmaaaaaapeaaaaaakmabaaaaejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
apadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklfdeieefccmaiaaaaeaaaabaaalacaaaafjaaaaae
egiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaadbaaaaaiecaabaaaaaaaaaaa
abeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaadhaaaaajbcaabaaaaaaaaaaa
ckaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaa
aaaaaaaabkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaai
ccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaah
ccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaa
aaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaa
aaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaa
abaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajncaabaaa
aaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaaj
hcaabaaaabaaaaaafgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaa
bcaaaaaakgikcaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaa
acaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
ddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaa
aaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
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
// Stats: 52 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedokamnkmkobgpkgpbpppaiffolhndfchiabaaaaaaomaoaaaaaeaaaaaa
daaaaaaadiafaaaagmanaaaadeaoaaaaebgpgodjaaafaaaaaaafaaaaaaacpopp
jaaeaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaaeaaadaaaaaaaaaaabaaafaaabaaahaaaaaaaaaa
acaaaaaaabaaaiaaaaaaaaaaadaaaaaaaeaaajaaaaaaaaaaadaaamaaajaaanaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaakabgaaffkaafaaaaadaaaaahia
aaaaoeiabfaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
abaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeiaabaaaaiaabaaookaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbaiaaaaadaaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabia
aaaaaaiaagaaaaacaaaaabiaaaaaaaiaacaaaaadaaaaabiaaaaaaaiaafaaffka
cdaaaaacaaaaaciaagaappkaacaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaad
aaaaabiaaaaaaaiaagaappkaacaaaaadaaaaabiaaaaaaaibagaappkaalaaaaad
aaaaaciaaaaaffiabgaakkkaabaaaaacabaaagiabgaaoekaamaaaaadaaaaaeia
abaakkiaagaappkabcaaaaaeabaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaac
aaaaaiiabfaappkaafaaaaadaaaaabiaaaaappiaadaaffkaafaaaaadaaaaabia
aaaaaaiaadaaaakaafaaaaadaaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaacia
abaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaacia
aaaaffiabgaappkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaacia
aaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkkaabaaaaac
abaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoia
abaajaiaaaaaffiaaeaajajaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabcaaoekaaeaaaaaeabaaaliabbaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabdaaoekaabaakkiaabaapeiaacaaaaadabaaahiaabaaoeiabeaaoeka
aeaaaaaeacaaahiaabaaoeiabfaappkaaaaapjibaeaaaaaeabaaahiaabaaoeia
bfaappkaaeaaoejbceaaaaacadaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeia
acaaoeiaahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaad
aaaaabiaaaaaaaiaabaaaaiaaeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjia
afaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
amaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabhaaffkaafaaaaad
abaaaiiaabaaffiaahaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaafdeieefccmaiaaaa
eaaaabaaalacaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaa
gfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaaddaaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaaaaaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaalaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaj
ccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaalaaaaaa
dhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaadkiacaaa
adaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaa
aaaaaaaaaiaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaa
aaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaakaaaaaaabeaaaaa
aaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaa
aeaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaa
agbjbaaaaeaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaajaaaaaa
egiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaa
baaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaadaaaaaa
bdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaa
beaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaiaebaaaaaaaeaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
dkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaa
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
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoep
fcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaaagaaaaaa
aiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaaaaaaaaaa
adaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaakeaaaaaa
afaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 71 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_Scale]
Vector 15 [_MainTex_ST]
Float 16 [V_FR_Fragmentum]
Float 17 [V_FR_DisplaceAmount]
Vector 18 [V_FR_DisplaceDirectionObjectPosition]
Float 19 [V_FR_FragmentsScale]
Float 20 [V_FR_DistanceToActivator]
Vector 21 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[23] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..21],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[21];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[20].x;
MIN R0.z, R0.y, c[21].w;
MOV R0.x, c[21].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[21];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[21].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[16];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[19].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[18];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[14].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[17];
MUL R2.y, R2.x, c[16].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
MUL R1.xyz, R0.w, R1;
RCP R1.w, R1.w;
MIN R1.w, R1, R2.y;
MAD R0.xyz, R1, R1.w, R0;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[22].x;
MUL R1.xyz, R1, c[14].w;
DP4 result.position.w, R0, c[4];
DP4 result.position.z, R0, c[3];
DP4 result.position.y, R0, c[2];
DP4 result.position.x, R0, c[1];
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[15];
MUL R0.xy, R0, c[0].z;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[13];
ADD result.texcoord[0].xy, R0, c[15].zwzw;
END
# 71 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 81 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_WorldSpaceLightPos0]
Vector 13 [unity_Scale]
Vector 14 [_MainTex_ST]
Float 15 [V_FR_Fragmentum]
Float 16 [V_FR_DisplaceAmount]
Vector 17 [V_FR_DisplaceDirectionObjectPosition]
Float 18 [V_FR_FragmentsScale]
Float 19 [V_FR_DistanceToActivator]
Vector 20 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c21, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c22, 20.00000000, -1.00000000, 0, 0
mov r1.w, c21.x
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c20
dp3 r0.z, r1, r1
mov r0.w, c20
slt r0.x, c21.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c21, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c21.x
add r0.w, -r0.y, c21.x
add r0.z, r0, c19.x
mul r0.w, r0.z, r0
min r0.z, r0, c20.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c21, r0.x
sge r0.x, r0, c21.y
mul r0.x, r0, r0.y
abs r0.y, c20.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c21.y, r0
add r0.w, -r0.z, c20
add r0.z, -r0.x, c21.x
mul r0.z, r0, r0.w
max r0.y, r0, c21
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c15
min r0.x, r0, c21
mov r0.y, c18.x
max r0.x, r0, c21.y
add r0.y, c21.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c21
mov r0.xyz, v3
max r1.x, r1, c21.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mov r1.xyz, c17
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c13.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c16
mul r2.x, c13.w, r2
mul r2.y, r2.x, c15.x
add r1.xyz, r1, -v3
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
mul r1.xyz, r0.w, r1
rcp r1.w, r1.w
min r1.w, r1, r2.y
mad r0.xyz, r1, r1.w, r0
mov r0.w, v0
frc r1.xyz, v2
mad r1.xyz, r1, c22.x, c22.y
mul r1.xyz, r1, c13.w
dp4 oPos.w, r0, c3
dp4 oPos.z, r0, c2
dp4 oPos.y, r0, c1
dp4 oPos.x, r0, c0
frc r0.xy, v1
mul r0.xy, r0, c14
mul r0.xy, r0, c21.w
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0
eefiecedjiclbelladohlcnckiophfmjhdkncdklabaaaaaakmaiaaaaadaaaaaa
cmaaaaaanmaaaaaageabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
iaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaheaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaheaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklfdeieefceaahaaaaeaaaabaanaabaaaafjaaaaaeegiocaaaaaaaaaaa
ahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaaddaaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaaaaaaaaajbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaadbaaaaaiecaabaaa
aaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaadhaaaaajbcaabaaa
aaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaj
ccaabaaaaaaaaaaabkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaa
diaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaa
diaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaai
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaaj
bcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaaj
ncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaaaaaaaaaaagbjbaaaadaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaaeaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaaaaaaaaai
hcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaacaaaaaabdaaaaaadcaaaaal
hcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaaigadbaia
ebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaa
acaaaaaabeaaaaaaegbcbaiaebaaaaaaadaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaa
baaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
icaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaa
abaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaa
fgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
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
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 112
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityPerDraw" 2
"vs_4_0_level_9_1
eefiecedofmninpfoehibfnigglpjbljcigohobcabaaaaaafaanaaaaaeaaaaaa
daaaaaaanaaeaaaabiamaaaamiamaaaaebgpgodjjiaeaaaajiaeaaaaaaacpopp
deaeaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaaeaaacaaaaaaaaaaabaaaaaaabaaagaaaaaaaaaa
acaaaaaaaeaaahaaaaaaaaaaacaaamaaajaaalaaaaaaaaaaaaaaaaaaaaacpopp
fbaaaaafbeaaapkaaaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbfaaapka
aaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahiaaaaaoeiabeaaaakabeaaffka
afaaaaadaaaaahiaaaaaoeiabdaappkaafaaaaadabaaahiaaaaaffiaamaaoeka
aeaaaaaeaaaaaliaalaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaanaaoeka
aaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeia
abaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabfaaaaka
aaaaooiaafaaaaadaaaaahiaadaaffjaamaaoekaaeaaaaaeaaaaahiaalaaoeka
adaaaajaaaaaoeiaaeaaaaaeaaaaahiaanaaoekaadaakkjaaaaaoeiaacaaaaad
aaaaahiaaaaaoeiaaoaaoekaacaaaaadaaaaahiaaaaaoeiaafaaoekbaiaaaaad
aaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabiaaaaaaaiaagaaaaacaaaaabia
aaaaaaiaacaaaaadaaaaabiaaaaaaaiaaeaaffkacdaaaaacaaaaaciaafaappka
acaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaadaaaaabiaaaaaaaiaafaappka
acaaaaadaaaaabiaaaaaaaibafaappkaalaaaaadaaaaaciaaaaaffiabeaakkka
abaaaaacabaaagiabeaaoekaamaaaaadaaaaaeiaabaakkiaafaappkabcaaaaae
abaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaacaaaaaiiabdaappkaafaaaaad
aaaaabiaaaaappiaacaaffkaafaaaaadaaaaabiaaaaaaaiaacaaaakaafaaaaad
aaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaaciaabaaaaiaacaaaakaalaaaaad
aaaaaciaaaaaffiabeaakkkaakaaaaadaaaaaciaaaaaffiabeaappkaacaaaaad
aaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkiabeaappka
alaaaaadaaaaaciaaaaaffiabeaakkkaabaaaaacabaaahiaadaaoejaacaaaaad
abaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffiaadaajaja
abaaaaacabaaahiaadaaoekaafaaaaadacaaahiaabaaffiabaaaoekaaeaaaaae
abaaaliaapaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabbaaoekaabaakkia
abaapeiaacaaaaadabaaahiaabaaoeiabcaaoekaaeaaaaaeacaaahiaabaaoeia
bdaappkaaaaapjibaeaaaaaeabaaahiaabaaoeiabdaappkaadaaoejbceaaaaac
adaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeiaacaaoeiaahaaaaacabaaabia
abaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaadaaaaabiaaaaaaaiaabaaaaia
aeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffia
aiaaoekaaeaaaaaeabaaapiaahaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
ajaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaahoaagaaoekappppaaaafdeieefceaahaaaaeaaaabaanaabaaaa
fjaaaaaeegiocaaaaaaaaaaaahaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
dcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacadaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaa
adaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaaaaaaaaaagaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaa
ddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaaagaaaaaa
aaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaaaaaaaaaa
agaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaa
aaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaa
agaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaaaaaaaaaa
agaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaaadaaaaaa
dkiacaaaacaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaadaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaafaaaaaa
abeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaaagaabaaa
aaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
aeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaaeaaaaaa
egacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaa
acaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaapgipcaaa
acaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaa
egacbaaaabaaaaaapgipcaaaacaaaaaabeaaaaaaegbcbaiaebaaaaaaadaaaaaa
baaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaelaaaaaf
icaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaadiaaaaai
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
adaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
heaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 76 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" ATTR14
Matrix 5 [_Object2World]
Matrix 9 [_World2Object]
Vector 13 [_ProjectionParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, vertex.attrib[14];
MOV R1.w, c[0].x;
DP4 R0.z, R1, c[7];
DP4 R0.x, R1, c[5];
DP4 R0.y, R1, c[6];
ADD R0.xyz, -R0, c[22];
DP3 R0.x, R0, R0;
RSQ R0.x, R0.x;
RCP R0.x, R0.x;
ADD R0.y, R0.x, c[21].x;
MIN R0.z, R0.y, c[22].w;
MOV R0.x, c[22].w;
ADD R0.z, R0, -R0.y;
SLT R0.x, c[0].y, R0;
MAD R0.y, R0.z, R0.x, R0;
ABS R0.w, c[22];
ADD R0.z, R0.y, -R0.w;
ABS R0.w, R0.x;
ADD R0.x, -R0.y, c[22].w;
MAX R0.z, R0, c[0].y;
ADD R0.y, R0.z, -R0.x;
SGE R0.w, c[0].y, R0;
MAD R0.w, R0.y, R0, R0.x;
MUL R0.x, R0.w, c[17];
MIN R0.y, R0.x, c[0].x;
MOV R0.x, c[0];
MOV R1.w, c[0].x;
ADD R0.z, -R0.x, c[20].x;
MAX R0.y, R0, c[0];
ABS R0.x, R0.y;
MAD R1.x, R0, R0.z, c[0];
MOV R0.xyz, vertex.attrib[14];
MAX R1.x, R1, c[0].y;
ADD R0.xyz, vertex.position, -R0;
MAD R0.xyz, R0, R1.x, vertex.attrib[14];
MOV R1.xyz, c[19];
DP4 R2.z, R1, c[11];
DP4 R2.x, R1, c[9];
DP4 R2.y, R1, c[10];
MUL R1.xyz, R2, c[15].w;
ADD R2.xyz, -R1, R0;
DP3 R1.w, R2, R2;
RSQ R1.w, R1.w;
MOV R2.x, c[15].w;
MUL R2.x, R2, c[18];
MUL R2.y, R2.x, c[17].x;
ADD R1.xyz, R1, -vertex.attrib[14];
DP3 R2.x, R1, R1;
MUL R2.y, R0.w, R2;
RSQ R0.w, R2.x;
RCP R1.w, R1.w;
MIN R2.x, R1.w, R2.y;
MUL R1.xyz, R0.w, R1;
MAD R1.xyz, R1, R2.x, R0;
MOV R1.w, vertex.position;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[23].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[23].x;
MUL R1.xyz, R1, c[15].w;
MOV result.position, R0;
FRC R0.xy, vertex.texcoord[0];
MUL R0.xy, R0, c[16];
MUL R0.xy, R0, c[0].z;
ADD result.texcoord[5].xy, R3, R3.z;
MOV result.texcoord[5].zw, R0;
DP3 result.texcoord[3].z, R1, c[7];
DP3 result.texcoord[3].y, R1, c[6];
DP3 result.texcoord[3].x, R1, c[5];
MOV result.texcoord[4].xyz, c[14];
ADD result.texcoord[0].xy, R0, c[16].zwzw;
END
# 76 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 86 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_World2Object]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_Scale]
Vector 16 [_MainTex_ST]
Float 17 [V_FR_Fragmentum]
Float 18 [V_FR_DisplaceAmount]
Vector 19 [V_FR_DisplaceDirectionObjectPosition]
Float 20 [V_FR_FragmentsScale]
Float 21 [V_FR_DistanceToActivator]
Vector 22 [V_FR_ActivatorSphereObject]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0.50000000, 0
mov r1.w, c23.x
mov r1.xyz, v3
dp4 r0.z, r1, c6
dp4 r0.y, r1, c5
dp4 r0.x, r1, c4
add r1.xyz, -r0, c22
dp3 r0.z, r1, r1
mov r0.w, c22
slt r0.x, c23.y, r0.w
max r0.y, -r0.x, r0.x
slt r0.y, c23, r0
rsq r0.z, r0.z
rcp r0.z, r0.z
mov r1.w, c23.x
add r0.w, -r0.y, c23.x
add r0.z, r0, c21.x
mul r0.w, r0.z, r0
min r0.z, r0, c22.w
mad r0.z, r0.y, r0, r0.w
sge r0.y, c23, r0.x
sge r0.x, r0, c23.y
mul r0.x, r0, r0.y
abs r0.y, c22.w
add r0.y, r0.z, -r0
max r0.x, -r0, r0
slt r0.x, c23.y, r0
add r0.w, -r0.z, c22
add r0.z, -r0.x, c23.x
mul r0.z, r0, r0.w
max r0.y, r0, c23
mad r0.w, r0.x, r0.y, r0.z
mul r0.x, r0.w, c17
min r0.x, r0, c23
mov r0.y, c20.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v3
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mov r1.xyz, c19
dp4 r2.z, r1, c10
dp4 r2.x, r1, c8
dp4 r2.y, r1, c9
mul r1.xyz, r2, c15.w
add r2.xyz, -r1, r0
dp3 r1.w, r2, r2
rsq r1.w, r1.w
mov r2.x, c18
mul r2.x, c15.w, r2
mul r2.y, r2.x, c17.x
add r1.xyz, r1, -v3
dp3 r2.x, r1, r1
mul r2.y, r0.w, r2
rsq r0.w, r2.x
rcp r1.w, r1.w
min r2.x, r1.w, r2.y
mul r1.xyz, r0.w, r1
mad r1.xyz, r1, r2.x, r0
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c24.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v2
mad r1.xyz, r2, c24.x, c24.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c23.w
mov oT5.zw, r0
dp3 oT3.z, r1, c6
dp3 oT3.y, r1, c5
dp3 oT3.x, r1, c4
mov oT4.xyz, c14
add oT0.xy, r0, c16.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
eefiecedcclgmacgpmnfjbdhfflomnbpopollomgabaaaaaagmajaaaaadaaaaaa
cmaaaaaanmaaaaaahmabaaaaejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefc
oiahaaaaeaaaabaapkabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaae
egiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaa
abaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaac
adaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
adaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaa
aaaaaaaaajaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaia
mbaaaaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaa
dkiacaaaaaaaaaaaakaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaa
dkiacaaaaaaaaaaaakaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaa
aaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahccaabaaaaaaaaaaa
akaabaaaaaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaajaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaa
abaaaaaaagaabaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaaiaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaaegiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaal
hcaabaaaabaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaia
ebaaaaaaadaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaelaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaa
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
// Stats: 51 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 176
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorSphereObject]
ConstBuffer "UnityPerCamera" 128
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 336
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 320 [unity_Scale]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
eefiecedgcbbflmfckcdadiinkjdbdmpfilkalibabaaaaaafiaoaaaaaeaaaaaa
daaaaaaabiafaaaaaianaaaalianaaaaebgpgodjoaaeaaaaoaaeaaaaaaacpopp
haaeaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaaeaaacaaaaaaaaaaabaaafaaabaaagaaaaaaaaaa
acaaaaaaabaaahaaaaaaaaaaadaaaaaaaeaaaiaaaaaaaaaaadaaamaaajaaamaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaadpaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahia
aaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahiaaaaaoeiabeaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacabaaabiabgaaaakaaeaaaaae
aaaaadoaaaaaoeiaabaaaaiaabaaookaafaaaaadaaaaahiaadaaffjaanaaoeka
aeaaaaaeaaaaahiaamaaoekaadaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoeka
adaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahia
aaaaoeiaafaaoekbaiaaaaadaaaaabiaaaaaoeiaaaaaoeiaahaaaaacaaaaabia
aaaaaaiaagaaaaacaaaaabiaaaaaaaiaacaaaaadaaaaabiaaaaaaaiaaeaaffka
cdaaaaacaaaaaciaafaappkaacaaaaadaaaaaciaaaaaffibaaaaaaiaakaaaaad
aaaaabiaaaaaaaiaafaappkaacaaaaadaaaaabiaaaaaaaibafaappkaalaaaaad
aaaaaciaaaaaffiabfaakkkaabaaaaacabaaagiabfaaoekaamaaaaadaaaaaeia
abaakkiaafaappkabcaaaaaeabaaabiaaaaakkiaaaaaaaiaaaaaffiaabaaaaac
aaaaaiiabeaappkaafaaaaadaaaaabiaaaaappiaacaaffkaafaaaaadaaaaabia
aaaaaaiaacaaaakaafaaaaadaaaaabiaabaaaaiaaaaaaaiaafaaaaadaaaaacia
abaaaaiaacaaaakaalaaaaadaaaaaciaaaaaffiabfaakkkaakaaaaadaaaaacia
aaaaffiabfaappkaacaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaacia
aaaaffiaaaaakkiabfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaac
abaaahiaadaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoia
abaajaiaaaaaffiaadaajajaabaaaaacabaaahiaadaaoekaafaaaaadacaaahia
abaaffiabbaaoekaaeaaaaaeabaaaliabaaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabcaaoekaabaakkiaabaapeiaacaaaaadabaaahiaabaaoeiabdaaoeka
aeaaaaaeacaaahiaabaaoeiabeaappkaaaaapjibaeaaaaaeabaaahiaabaaoeia
beaappkaadaaoejbceaaaaacadaaahiaabaaoeiaaiaaaaadabaaabiaacaaoeia
acaaoeiaahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaakaaaaad
aaaaabiaaaaaaaiaabaaaaiaaeaaaaaeaaaaahiaadaaoeiaaaaaaaiaaaaapjia
afaaaaadabaaapiaaaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaapia
alaaoekaaaaappjaaaaaoeiaafaaaaadabaaahiaaaaapeiabgaaffkaafaaaaad
abaaaiiaabaaffiaagaaaakaacaaaaadadaaadoaabaakkiaabaaomiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
adaaamoaaaaaoeiaabaaaaacacaaahoaahaaoekappppaaaafdeieefcoiahaaaa
eaaaabaapkabaaaafjaaaaaeegiocaaaaaaaaaaaalaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaa
fpaaaaadhcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagiaaaaacadaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaadaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaa
ajaaaaaaddaaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaaaaaaaaaaa
akaaaaaaaaaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkiacaiambaaaaaa
aaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaaaaaaaaaaaajccaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaadbaaaaaiecaabaaaaaaaaaaaabeaaaaaaaaaaaaadkiacaaa
aaaaaaaaakaaaaaadhaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaajccaabaaaaaaaaaaabkiacaaaaaaaaaaa
ahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaa
aaaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
aaaaaaaabkaabaaaaaaaaaaadicaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
ajaaaaaaabeaaaaaaaaaialpdcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaadaaaaaadcaaaaajncaabaaaaaaaaaaaagajbaaaabaaaaaa
agaabaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
aiaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaaaadaaaaaabdaaaaaadcaaaaalhcaabaaaacaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaaigadbaiaebaaaaaaaaaaaaaadcaaaaalhcaabaaa
abaaaaaaegacbaaaabaaaaaapgipcaaaadaaaaaabeaaaaaaegbcbaiaebaaaaaa
adaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaa
elaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaaddaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaadkaabaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaafgafbaaaaaaaaaaaigadbaaaaaaaaaaa
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
jjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 112
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
ConstBuffer "$Globals" 176
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
ConstBuffer "$Globals" 176
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