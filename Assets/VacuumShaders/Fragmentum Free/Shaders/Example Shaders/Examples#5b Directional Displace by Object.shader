// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 500.4KB

Shader "VacuumShaders/Fragmentum/Examples/5b Directional Displace by Object" {
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
//Free V_FR_ACTIVATOR_PLANE
//Free V_FR_DISPLACE_DIRECTIONAL

//DO NOT MODIFY !!! The End

 // Stats for Vertex shader:
 //       d3d11 : 26 avg math (9..44)
 //    d3d11_9x : 26 avg math (9..44)
 //        d3d9 : 36 avg math (10..63)
 //      opengl : 34 avg math (10..58)
 // Stats for Fragment shader:
 //       d3d11 : 4 avg math (3..13), 1 avg texture (1..2)
 //    d3d11_9x : 4 avg math (3..13), 1 avg texture (1..2)
 //        d3d9 : 6 avg math (5..15), 1 avg texture (1..2)
 //      opengl : 7 avg math (6..16), 1 avg texture (1..2)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "QUEUE"="Geometry" "RenderType"="Opaque" "FragmentumTag"="Fragmentum/SM2/One Directional Light/Diffuse" }
  Cull Off
Program "vp" {
SubProgram "opengl " {
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
ConstBuffer "$Globals" 144
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
ConstBuffer "$Globals" 144
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
ConstBuffer "$Globals" 144
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
ConstBuffer "$Globals" 144
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
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
ConstBuffer "$Globals" 208
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
ConstBuffer "$Globals" 208
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
ConstBuffer "$Globals" 208
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
ConstBuffer "$Globals" 208
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
// Stats: 11 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
// Stats: 16 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
// Stats: 53 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 53 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 53 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 53 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 144
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 208
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
// Stats: 52 math
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[17];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[22], c[22];
ADD R0.xyz, R1, -c[21];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[22];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[18];
ADD R0.x, R0, c[20];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[16];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[16];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[19];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
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
END
# 52 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 57 math
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
Vector 20 [V_FR_ActivatorPlanePosition]
Vector 21 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c22, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c23, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c17, r0
mov r0.xyz, c9
dp3 r2.x, c17, r1
dp3 r2.y, c17, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v3
mov r0.w, c22.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c21, c21
rsq r0.x, r1.w
add r1.xyz, r1, -c20
mul r0.xyz, r0.x, c21
dp3 r0.x, r0, r1
mov r0.y, c16.x
mul r0.y, c13.w, r0
add r0.x, r0, c19
mov r1.w, v0
max r0.x, r0, c22.y
mul r0.z, r0.y, c15.x
mul r0.y, r0.x, c15.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c22
mov r0.y, c18.x
max r0.x, r0, c22.y
add r0.y, c22.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c22
mov r0.xyz, v3
max r1.x, r1, c22.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v2
mad r0.xyz, r0, c23.x, c23.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c22.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorPlanePosition]
Vector 112 [V_FR_ActivatorPlaneNormal]
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
eefiecedgppfpfnojlnbajeagemohlodbmikohplabaaaaaaiaahaaaaadaaaaaa
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
aaklklklfdeieefcbeagaaaaeaaaabaaifabaaaafjaaaaaeegiocaaaaaaaaaaa
aiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
agaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaahaaaaaaegiocaaa
aaaaaaaaahaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaahaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaa
akiacaaaaaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaa
egbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaabkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaai
bcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaadaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaa
abaaaaaafgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaa
egacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaa
kgikcaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaaf
dcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaa
aaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaa
aaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaa
abaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaa
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
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorPlanePosition]
Vector 112 [V_FR_ActivatorPlaneNormal]
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
eefiecedbceoapogaepihilecogdmbffkikpfibnabaaaaaahealaaaaaeaaaaaa
daaaaaaacaaeaaaadmakaaaaomakaaaaebgpgodjoiadaaaaoiadaaaaaaacpopp
hiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaafaaacaaaaaaaaaaabaaaaaaabaaahaaaaaaaaaa
acaaaaaaaeaaaiaaaaaaaaaaacaaamaaahaaamaaaaaaaaaaacaabeaaabaabdaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbeaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbfaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahia
aaaaoeiabeaaaakabeaaffkaafaaaaadaaaaahiaaaaaoeiabdaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaae
aaaaadoaaaaaoeiabfaaaakaaaaaooiaafaaaaadaaaaahiaadaaffjaanaaoeka
aeaaaaaeaaaaahiaamaaoekaadaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoeka
adaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahia
aaaaoeiaafaaoekbajaaaaadaaaaaiiaagaaoekaagaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaagaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaaeaaffkaalaaaaadaaaaabiaaaaaaaia
beaakkkaafaaaaadaaaaaciaaaaaaaiaacaaaakaalaaaaadaaaaaciaaaaaffia
beaakkkaakaaaaadaaaaaciaaaaaffiabeaappkaabaaaaacabaaaciabeaaffka
acaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
beaappkaalaaaaadaaaaaciaaaaaffiabeaakkkaabaaaaacabaaahiaadaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
adaajajaabaaaaacabaaaiiabdaappkaafaaaaadabaaabiaabaappiaacaaffka
afaaaaadabaaabiaabaaaaiaacaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaadaaoekaafaaaaadacaaahiaabaaffiabbaaoekaaeaaaaae
abaaaliabaaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabcaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaalaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaahaaoekappppaaaa
fdeieefcbeagaaaaeaaaabaaifabaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
amaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaagaaaaaa
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaahaaaaaaegiocaaaaaaaaaaa
ahaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaahaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaadaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaa
aaaaaaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
acaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
aaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaa
egiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheo
kiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeo
ehefeofeaaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 53 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 53 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[18];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[23], c[23];
ADD R0.xyz, R1, -c[22];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[23];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[19];
ADD R0.x, R0, c[21];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[17];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[17];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[20];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
MOV R0.w, vertex.position;
FRC R1.xyz, vertex.normal;
MUL R1.xyz, R1, c[0].w;
ADD R1.xyz, R1, c[24].x;
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
# 53 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c23, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c24, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c18, r0
mov r0.xyz, c9
dp3 r2.x, c18, r1
dp3 r2.y, c18, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v4
mov r0.w, c23.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c22, c22
rsq r0.x, r1.w
add r1.xyz, r1, -c21
mul r0.xyz, r0.x, c22
dp3 r0.x, r0, r1
mov r0.y, c17.x
mul r0.y, c13.w, r0
add r0.x, r0, c20
mov r1.w, v0
max r0.x, r0, c23.y
mul r0.z, r0.y, c16.x
mul r0.y, r0.x, c16.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c23
mov r0.y, c19.x
max r0.x, r0, c23.y
add r0.y, c23.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c23
mov r0.xyz, v4
max r1.x, r1, c23.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v4
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v3
mad r0.xyz, r0, c24.x, c24.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c23.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
mad oT1.xy, v2, c15, c15.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedknfobmamaplgonekkcejjgcagfogjpgfabaaaaaapeahaaaaadaaaaaa
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
epfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcfiagaaaaeaaaabaa
jgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaafjaaaaaeegiocaaaabaaaaaa
abaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaadhcbabaaa
adaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaa
acaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaa
aiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaa
aiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
aaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaagaaaaaa
deaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaai
ccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaaaaaaaaaaaeaaaaaaaaaaaaai
ecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaaabeaaaaaaaaaialpdcaaaaaj
ccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadp
deaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
hcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaa
diaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaaaeaaaaaadkiacaaaacaaaaaa
beaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaa
aeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaaafaaaaaaegiccaaaacaaaaaa
bbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaa
aaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaa
egacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaa
aaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaa
aaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaacaaaaaaacaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
aaaaaaaaegaabaaaaaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaaaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaabaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaaacaaaaaa
agiecaaaaaaaaaaaacaaaaaakgiocaaaaaaaaaaaacaaaaaabkaaaaafhcaabaaa
aaaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaaaaaaaaaegacbaaaaaaaaaaa
aceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialpaaaaialp
aaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaapgipcaaa
acaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
acaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaaacaaaaaaamaaaaaa
agaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaaacaaaaaaegiccaaa
acaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaadgaaaaaghccabaaa
adaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 144
Vector 16 [_MainTex_ST]
Vector 32 [unity_LightmapST]
Float 64 [V_FR_Fragmentum]
Float 68 [V_FR_DisplaceAmount]
Vector 80 [V_FR_DisplaceDirectionObjectPosition]
Float 96 [V_FR_FragmentsScale]
Float 100 [V_FR_DistanceToActivator]
Vector 112 [V_FR_ActivatorPlanePosition]
Vector 128 [V_FR_ActivatorPlaneNormal]
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
eefiecedndgnampocfdlgohfnngabmpojljmpanmabaaaaaaaiamaaaaaeaaaaaa
daaaaaaaeaaeaaaakaakaaaagialaaaaebgpgodjaiaeaaaaaiaeaaaaaaacpopp
jiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
acaaabaaaaaaaaaaaaaaaeaaafaaadaaaaaaaaaaabaaaaaaabaaaiaaaaaaaaaa
acaaaaaaaeaaajaaaaaaaaaaacaaamaaahaaanaaaaaaaaaaacaabeaaabaabeaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjabdaaaaacaaaaahia
adaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
aaaaamiaabaaoekaaeaaaaaeaaaaadoaaaaaoeiabgaaaakaaaaaooiaaeaaaaae
aaaaamoaacaabejaacaabekaacaalekaafaaaaadaaaaahiaaeaaffjaaoaaoeka
aeaaaaaeaaaaahiaanaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiaapaaoeka
aeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiabaaaoekaacaaaaadaaaaahia
aaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoekaahaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaahaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffkaalaaaaadaaaaabiaaaaaaaia
bfaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaakaalaaaaadaaaaaciaaaaaffia
bfaakkkaakaaaaadaaaaaciaaaaaffiabfaappkaabaaaaacabaaaciabfaaffka
acaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
bfaappkaalaaaaadaaaaaciaaaaaffiabfaakkkaabaaaaacabaaahiaaeaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
aeaajajaabaaaaacabaaaiiabeaappkaafaaaaadabaaabiaabaappiaadaaffka
afaaaaadabaaabiaabaaaaiaadaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaaeaaoekaafaaaaadacaaahiaabaaffiabcaaoekaaeaaaaae
abaaaliabbaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabdaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaakaaoekaaeaaaaaeabaaapiaajaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaamaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaaiaaoekappppaaaa
fdeieefcfiagaaaaeaaaabaajgabaaaafjaaaaaeegiocaaaaaaaaaaaajaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagiaaaaac
acaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaacaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaahaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaaiaaaaaaegiocaaaaaaaaaaaaiaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaaiaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaagaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaaeaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaagaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
aeaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaaeaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
afaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
acaaaaaabaaaaaaaagiacaaaaaaaaaaaafaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaaaaaaaaaaafaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
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
ejfdeheomaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaa
kbaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaapadaaaakkaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahahaaaalbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapahaaaaljaaaaaaaaaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
faepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeoehefeofe
aaedepemepfcaaklepfdeheojiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaadamaaaaimaaaaaaabaaaaaaaaaaaaaaadaaaaaaabaaaaaaamadaaaa
imaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 57 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[19];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[23], c[23];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[23];
ADD R2.xyz, R2, -c[22];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[18].x;
ADD R0.x, R0, c[21];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[17].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[17].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[20].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
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
END
# 57 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 62 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c24, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c25, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c19, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c19, r1
dp3 r2.y, c19, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c23, c23
mul r0.xyz, r0.x, r2
mov r1.w, c24.x
mov r1.xyz, v3
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c23
add r2.xyz, r2, -c22
dp3 r0.w, r1, r2
mov r1.x, c18
mul r1.x, c15.w, r1
add r0.w, r0, c21.x
mul r1.y, r1.x, c17.x
max r0.w, r0, c24.y
mul r1.x, r0.w, c17
mul r0.w, r1.y, r0
min r1.x, r1, c24
mov r1.y, c20.x
max r1.x, r1, c24.y
add r1.y, c24.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c24.x
mov r1.xyz, v3
max r1.w, r1, c24.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v3
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c25.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v2
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
"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorPlanePosition]
Vector 176 [V_FR_ActivatorPlaneNormal]
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
eefiecedkhgcmjocjdklfeahnjiajjmedakbmkjoabaaaaaaeaaiaaaaadaaaaaa
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
lmagaaaaeaaaabaakpabaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaae
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
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaalaaaaaaegiocaaaaaaaaaaaalaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaajaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
ahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
aiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
adaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaaaiaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
abaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaa
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
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorPlanePosition]
Vector 176 [V_FR_ActivatorPlaneNormal]
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
eefiecedigfdgdngokagmkjonjigajjdcakchflfabaaaaaahmamaaaaaeaaaaaa
daaaaaaagiaeaaaacmalaaaanmalaaaaebgpgodjdaaeaaaadaaeaaaaaaacpopp
leadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaafaaacaaaaaaaaaaabaaafaaabaaahaaaaaaaaaa
acaaaaaaabaaaiaaaaaaaaaaadaaaaaaaeaaajaaaaaaaaaaadaaamaaahaaanaa
aaaaaaaaadaabeaaabaabeaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
abaaabiabgaaaakaaeaaaaaeaaaaadoaaaaaoeiaabaaaaiaabaaookaafaaaaad
aaaaahiaadaaffjaaoaaoekaaeaaaaaeaaaaahiaanaaoekaadaaaajaaaaaoeia
aeaaaaaeaaaaahiaapaaoekaadaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
baaaoekaacaaaaadaaaaahiaaaaaoeiaafaaoekbajaaaaadaaaaaiiaagaaoeka
agaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaagaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaaeaaffka
alaaaaadaaaaabiaaaaaaaiabfaakkkaafaaaaadaaaaaciaaaaaaaiaacaaaaka
alaaaaadaaaaaciaaaaaffiabfaakkkaakaaaaadaaaaaciaaaaaffiabfaappka
abaaaaacabaaaciabfaaffkaacaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabfaappkaalaaaaadaaaaaciaaaaaffiabfaakkka
abaaaaacabaaahiaadaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaadaajajaabaaaaacabaaaiiabeaappkaafaaaaad
abaaabiaabaappiaacaaffkaafaaaaadabaaabiaabaaaaiaacaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaadaaoekaafaaaaadacaaahia
abaaffiabcaaoekaaeaaaaaeabaaaliabbaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabdaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaakaaoeka
aeaaaaaeabaaapiaajaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaamaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabgaaffkaafaaaaadabaaaiiaabaaffiaahaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
aiaaoekappppaaaafdeieefclmagaaaaeaaaabaakpabaaaafjaaaaaeegiocaaa
aaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
akaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaalaaaaaaegiocaaa
aaaaaaaaalaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaalaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaajaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaa
akiacaaaaaaaaaaaajaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaa
egbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaabkiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaai
bcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaa
abaaaaaafgifcaaaaaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaa
egacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaa
kgikcaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
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
mgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 58 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[26] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..24],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[20];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[24], c[24];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[24];
ADD R2.xyz, R2, -c[23];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[19].x;
ADD R0.x, R0, c[22];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[18].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[18].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[21].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
FRC R2.xyz, vertex.normal;
DP4 R0.w, R1, c[4];
DP4 R0.z, R1, c[3];
DP4 R0.x, R1, c[1];
DP4 R0.y, R1, c[2];
MUL R3.xyz, R0.xyww, c[25].y;
MUL R3.y, R3, c[13].x;
MUL R2.xyz, R2, c[0].w;
ADD R1.xyz, R2, c[25].x;
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
# 58 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Vector 23 [V_FR_ActivatorPlanePosition]
Vector 24 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_normal0 v3
dcl_tangent0 v4
def c25, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c26, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c20, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c20, r1
dp3 r2.y, c20, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c24, c24
mul r0.xyz, r0.x, r2
mov r1.w, c25.x
mov r1.xyz, v4
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c24
add r2.xyz, r2, -c23
dp3 r0.w, r1, r2
mov r1.x, c19
mul r1.x, c15.w, r1
add r0.w, r0, c22.x
mul r1.y, r1.x, c18.x
max r0.w, r0, c25.y
mul r1.x, r0.w, c18
mul r0.w, r1.y, r0
min r1.x, r1, c25
mov r1.y, c21.x
max r1.x, r1, c25.y
add r1.y, c25.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c25.x
mov r1.xyz, v4
max r1.w, r1, c25.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v4
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c26.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v3
mad r1.xyz, r2, c26.x, c26.y
mul r1.xyz, r1, c15.w
mov oPos, r0
frc r0.xy, v1
mul r0.xy, r0, c16
mul r0.xy, r0, c25.w
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedpleknpnkngedfkmmggkgjcgjcgbiehejabaaaaaaleaiaaaaadaaaaaa
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
feeffiedepepfceeaaklklklfdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaae
egiocaaaaaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaae
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
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaa
amaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaakaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaa
aaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaa
diaaaaaidcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaa
dcaaaaandccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaeb
aaaaaaaaaaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaa
agbebaaaacaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaa
bkaaaaafhcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaa
egacbaaaabaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaapgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaa
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
// Stats: 44 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 208
Vector 80 [_MainTex_ST]
Vector 96 [unity_LightmapST]
Float 128 [V_FR_Fragmentum]
Float 132 [V_FR_DisplaceAmount]
Vector 144 [V_FR_DisplaceDirectionObjectPosition]
Float 160 [V_FR_FragmentsScale]
Float 164 [V_FR_DistanceToActivator]
Vector 176 [V_FR_ActivatorPlanePosition]
Vector 192 [V_FR_ActivatorPlaneNormal]
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
eefiecedppdecdgmgbmnccpfhaglfceaimiopbaeabaaaaaabaanaaaaaeaaaaaa
daaaaaaaiiaeaaaajaalaaaafiamaaaaebgpgodjfaaeaaaafaaeaaaaaaacpopp
neadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
acaaabaaaaaaaaaaaaaaaiaaafaaadaaaaaaaaaaabaaafaaabaaaiaaaaaaaaaa
acaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaaaaaaaaaaadaaamaaahaaaoaa
aaaaaaaaadaabeaaabaabfaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbgaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbhaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeia
aeaaapjabdaaaaacaaaaahiaadaaoejaaeaaaaaeaaaaahiaaaaaoeiabgaaaaka
bgaaffkaafaaaaadaaaaahiaaaaaoeiabfaappkaafaaaaadabaaahiaaaaaffia
apaaoekaaeaaaaaeaaaaaliaaoaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoa
baaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadia
aaaaoeiaabaaoekaabaaaaacabaaabiabhaaaakaaeaaaaaeaaaaadoaaaaaoeia
abaaaaiaabaaookaaeaaaaaeaaaaamoaacaabejaacaabekaacaalekaafaaaaad
aaaaahiaaeaaffjaapaaoekaaeaaaaaeaaaaahiaaoaaoekaaeaaaajaaaaaoeia
aeaaaaaeaaaaahiabaaaoekaaeaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
bbaaoekaacaaaaadaaaaahiaaaaaoeiaagaaoekbajaaaaadaaaaaiiaahaaoeka
ahaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaahaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaafaaffka
alaaaaadaaaaabiaaaaaaaiabgaakkkaafaaaaadaaaaaciaaaaaaaiaadaaaaka
alaaaaadaaaaaciaaaaaffiabgaakkkaakaaaaadaaaaaciaaaaaffiabgaappka
abaaaaacabaaaciabgaaffkaacaaaaadaaaaaeiaabaaffiaafaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabgaappkaalaaaaadaaaaaciaaaaaffiabgaakkka
abaaaaacabaaahiaaeaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaaeaajajaabaaaaacabaaaiiabfaappkaafaaaaad
abaaabiaabaappiaadaaffkaafaaaaadabaaabiaabaaaaiaadaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaaeaaoekaafaaaaadacaaahia
abaaffiabdaaoekaaeaaaaaeabaaaliabcaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabeaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaanaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabhaaffkaafaaaaadabaaaiiaabaaffiaaiaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
ajaaoekappppaaaafdeieefcaaahaaaaeaaaabaamaabaaaafjaaaaaeegiocaaa
aaaaaaaaanaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaafpaaaaadhcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadmccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
giaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaaaaaaaaaaaaaaaaihcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaaaaaaaaajhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaalaaaaaabbaaaaaj
icaabaaaaaaaaaaaegiocaaaaaaaaaaaamaaaaaaegiocaaaaaaaaaaaamaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegiccaaaaaaaaaaaamaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkiacaaaaaaaaaaaakaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaa
akaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaa
egbcbaiaebaaaaaaaeaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
fgafbaaaaaaaaaaaagbjbaaaaeaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaa
aaaaaaaaaiaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaa
aaaaaaaaajaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaa
egiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
dcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaa
ajaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaa
aaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaai
dcaabaaaabaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaan
dccabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaa
aaaaaaaaogikcaaaaaaaaaaaafaaaaaadcaaaaalmccabaaaabaaaaaaagbebaaa
acaaaaaaagiecaaaaaaaaaaaagaaaaaakgiocaaaaaaaaaaaagaaaaaabkaaaaaf
hcaabaaaabaaaaaaegbcbaaaadaaaaaadcaaaaaphcaabaaaabaaaaaaegacbaaa
abaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaaaaaaialp
aaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
pgipcaaaadaaaaaabeaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaaklcaabaaaabaaaaaaegiicaaaadaaaaaa
amaaaaaaagaabaaaabaaaaaaegaibaaaacaaaaaadcaaaaakhccabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgakbaaaabaaaaaaegadbaaaabaaaaaadgaaaaag
hccabaaaadaaaaaaegiccaaaacaaaaaaaaaaaaaadiaaaaakhcaabaaaabaaaaaa
egadbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaadgaaaaaf
mccabaaaaeaaaaaakgaobaaaaaaaaaaadiaaaaaiicaabaaaabaaaaaabkaabaaa
abaaaaaaakiacaaaabaaaaaaafaaaaaaaaaaaaahdccabaaaaeaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaabejfdeheomaaaaaaaagaaaaaaaiaaaaaa
jiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaakbaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaadadaaaakbaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaapadaaaakkaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaahahaaaa
lbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapahaaaaljaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapaaaaaafaepfdejfeejepeoaafeeffiedepepfc
eeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaabaaaaaaamadaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaa
keaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 52 math
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
Vector 21 [V_FR_ActivatorPlanePosition]
Vector 22 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[24] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..22],
		{ -1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R2.x, c[14].w;
MUL R2.x, R2, c[17];
MOV R0.w, c[0].x;
MOV R0.xyz, vertex.attrib[14];
DP4 R1.z, R0, c[7];
DP4 R1.y, R0, c[6];
DP4 R1.x, R0, c[5];
DP4 R1.w, c[22], c[22];
ADD R0.xyz, R1, -c[21];
RSQ R0.w, R1.w;
MUL R1.xyz, R0.w, c[22];
DP3 R0.x, R1, R0;
MOV R1.xyz, c[18];
ADD R0.x, R0, c[20];
MAX R0.w, R0.x, c[0].y;
MUL R0.x, R0.w, c[16];
MIN R0.x, R0, c[0];
MAX R0.x, R0, c[0].y;
ABS R1.w, R0.x;
MUL R2.x, R2, c[16];
DP3 R0.z, R1, c[11];
DP3 R0.y, R1, c[10];
DP3 R0.x, R1, c[9];
DP3 R1.y, R0, R0;
RSQ R1.y, R1.y;
MOV R1.x, c[0];
ADD R1.x, -R1, c[19];
MAD R1.x, R1.w, R1, c[0];
MUL R0.xyz, R1.y, R0;
MAX R1.w, R1.x, c[0].y;
MOV R1.xyz, vertex.attrib[14];
ADD R1.xyz, vertex.position, -R1;
MAD R1.xyz, R1, R1.w, vertex.attrib[14];
MUL R0.w, R2.x, R0;
MAD R0.xyz, R0, R0.w, R1;
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
END
# 52 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 57 math
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
Vector 20 [V_FR_ActivatorPlanePosition]
Vector 21 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c22, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c23, 20.00000000, -1.00000000, 0, 0
mov r1.xyz, c8
mov r0.xyz, c10
dp3 r2.z, c17, r0
mov r0.xyz, c9
dp3 r2.x, c17, r1
dp3 r2.y, c17, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
mul r2.xyz, r0.x, r2
mov r0.xyz, v3
mov r0.w, c22.x
dp4 r1.z, r0, c6
dp4 r1.y, r0, c5
dp4 r1.x, r0, c4
dp4 r1.w, c21, c21
rsq r0.x, r1.w
add r1.xyz, r1, -c20
mul r0.xyz, r0.x, c21
dp3 r0.x, r0, r1
mov r0.y, c16.x
mul r0.y, c13.w, r0
add r0.x, r0, c19
mov r1.w, v0
max r0.x, r0, c22.y
mul r0.z, r0.y, c15.x
mul r0.y, r0.x, c15.x
mul r0.w, r0.z, r0.x
min r0.x, r0.y, c22
mov r0.y, c18.x
max r0.x, r0, c22.y
add r0.y, c22.z, r0
abs r0.x, r0
mad r1.x, r0, r0.y, c22
mov r0.xyz, v3
max r1.x, r1, c22.y
add r0.xyz, v0, -r0
mad r0.xyz, r0, r1.x, v3
mad r1.xyz, r2, r0.w, r0
frc r0.xyz, v2
mad r0.xyz, r0, c23.x, c23.y
mul r0.xyz, r0, c13.w
dp4 oPos.w, r1, c3
dp4 oPos.z, r1, c2
dp4 oPos.y, r1, c1
dp4 oPos.x, r1, c0
frc r1.xy, v1
dp3 oT3.z, r0, c6
dp3 oT3.y, r0, c5
mul r1.xy, r1, c14
dp3 oT3.x, r0, c4
mul r0.xy, r1, c22.w
mov oT4.xyz, c12
add oT0.xy, r0, c14.zwzw
"
}
SubProgram "d3d11 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorPlanePosition]
Vector 112 [V_FR_ActivatorPlaneNormal]
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
eefiecedgppfpfnojlnbajeagemohlodbmikohplabaaaaaaiaahaaaaadaaaaaa
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
aaklklklfdeieefcbeagaaaaeaaaabaaifabaaaafjaaaaaeegiocaaaaaaaaaaa
aiaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaa
bfaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaad
hcbabaaaacaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
hccabaaaadaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
agaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaahaaaaaaegiocaaa
aaaaaaaaahaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaahaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaa
akiacaaaaaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaa
egbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaabkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaai
bcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaadaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaa
abaaaaaafgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaa
egacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaa
kgikcaaaaaaaaaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaa
acaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaaf
dcaabaaaaaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaa
aaaaaaaaegiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaa
aaaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaa
abaaaaaabkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaa
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
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 128
Vector 16 [_MainTex_ST]
Float 48 [V_FR_Fragmentum]
Float 52 [V_FR_DisplaceAmount]
Vector 64 [V_FR_DisplaceDirectionObjectPosition]
Float 80 [V_FR_FragmentsScale]
Float 84 [V_FR_DistanceToActivator]
Vector 96 [V_FR_ActivatorPlanePosition]
Vector 112 [V_FR_ActivatorPlaneNormal]
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
eefiecedbceoapogaepihilecogdmbffkikpfibnabaaaaaahealaaaaaeaaaaaa
daaaaaaacaaeaaaadmakaaaaomakaaaaebgpgodjoiadaaaaoiadaaaaaaacpopp
hiadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaabaa
abaaabaaaaaaaaaaaaaaadaaafaaacaaaaaaaaaaabaaaaaaabaaahaaaaaaaaaa
acaaaaaaaeaaaiaaaaaaaaaaacaaamaaahaaamaaaaaaaaaaacaabeaaabaabdaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbeaaapkaaaaakaebaaaaialpaaaaaaaa
aaaaiadpfbaaaaafbfaaapkaaaaacaebaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjabdaaaaacaaaaahiaacaaoejaaeaaaaaeaaaaahia
aaaaoeiabeaaaakabeaaffkaafaaaaadaaaaahiaaaaaoeiabdaappkaafaaaaad
abaaahiaaaaaffiaanaaoekaaeaaaaaeaaaaaliaamaakekaaaaaaaiaabaakeia
aeaaaaaeabaaahoaaoaaoekaaaaakkiaaaaapeiabdaaaaacaaaaadiaabaaoeja
afaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaacaaaaamiaabaaoekaaeaaaaae
aaaaadoaaaaaoeiabfaaaakaaaaaooiaafaaaaadaaaaahiaadaaffjaanaaoeka
aeaaaaaeaaaaahiaamaaoekaadaaaajaaaaaoeiaaeaaaaaeaaaaahiaaoaaoeka
adaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiaapaaoekaacaaaaadaaaaahia
aaaaoeiaafaaoekbajaaaaadaaaaaiiaagaaoekaagaaoekaahaaaaacaaaaaiia
aaaappiaafaaaaadabaaahiaaaaappiaagaaoekaaiaaaaadaaaaabiaabaaoeia
aaaaoeiaacaaaaadaaaaabiaaaaaaaiaaeaaffkaalaaaaadaaaaabiaaaaaaaia
beaakkkaafaaaaadaaaaaciaaaaaaaiaacaaaakaalaaaaadaaaaaciaaaaaffia
beaakkkaakaaaaadaaaaaciaaaaaffiabeaappkaabaaaaacabaaaciabeaaffka
acaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaaeaaaaaciaaaaaffiaaaaakkia
beaappkaalaaaaadaaaaaciaaaaaffiabeaakkkaabaaaaacabaaahiaadaaoeja
acaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaaeaaaaaoiaabaajaiaaaaaffia
adaajajaabaaaaacabaaaiiabdaappkaafaaaaadabaaabiaabaappiaacaaffka
afaaaaadabaaabiaabaaaaiaacaaaakaafaaaaadaaaaabiaaaaaaaiaabaaaaia
abaaaaacabaaahiaadaaoekaafaaaaadacaaahiaabaaffiabbaaoekaaeaaaaae
abaaaliabaaakekaabaaaaiaacaakeiaaeaaaaaeabaaahiabcaaoekaabaakkia
abaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaaeaaaaahiaacaaoeiaaaaaaaia
aaaapjiaafaaaaadabaaapiaaaaaffiaajaaoekaaeaaaaaeabaaapiaaiaaoeka
aaaaaaiaabaaoeiaaeaaaaaeaaaaapiaakaaoekaaaaakkiaabaaoeiaaeaaaaae
aaaaapiaalaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaahoaahaaoekappppaaaa
fdeieefcbeagaaaaeaaaabaaifabaaaafjaaaaaeegiocaaaaaaaaaaaaiaaaaaa
fjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaaacaaaaaabfaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaa
acaaaaaafpaaaaadhcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaaddccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaa
adaaaaaagiaaaaacacaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaadaaaaaa
egiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaa
amaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaaaaaaaaai
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaacaaaaaaapaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaagaaaaaa
bbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaahaaaaaaegiocaaaaaaaaaaa
ahaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaahaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkiacaaaaaaaaaaaafaaaaaadeaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaa
aaaaaaaaakiacaaaaaaaaaaaadaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaa
aaaaaaaaafaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaa
aaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaa
bkiacaaaaaaaaaaaadaaaaaadkiacaaaacaaaaaabeaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaadaaaaaadiaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaa
fgifcaaaaaaaaaaaaeaaaaaaegiccaaaacaaaaaabbaaaaaadcaaaaalhcaabaaa
abaaaaaaegiccaaaacaaaaaabaaaaaaaagiacaaaaaaaaaaaaeaaaaaaegacbaaa
abaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaacaaaaaabcaaaaaakgikcaaa
aaaaaaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaaj
hcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaa
diaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagaabaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaacaaaaaaacaaaaaa
kgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
acaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabkaaaaafdcaabaaa
aaaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaaaaaaaaaaegaabaaaaaaaaaaa
egiacaaaaaaaaaaaabaaaaaadcaaaaandccabaaaabaaaaaaegaabaaaaaaaaaaa
aceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaaogikcaaaaaaaaaaaabaaaaaa
bkaaaaafhcaabaaaaaaaaaaaegbcbaaaacaaaaaadcaaaaaphcaabaaaaaaaaaaa
egacbaaaaaaaaaaaaceaaaaaaaaakaebaaaakaebaaaakaebaaaaaaaaaceaaaaa
aaaaialpaaaaialpaaaaialpaaaaaaaadiaaaaaihcaabaaaaaaaaaaaegacbaaa
aaaaaaaapgipcaaaacaaaaaabeaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaaklcaabaaaaaaaaaaaegiicaaa
acaaaaaaamaaaaaaagaabaaaaaaaaaaaegaibaaaabaaaaaadcaaaaakhccabaaa
acaaaaaaegiccaaaacaaaaaaaoaaaaaakgakbaaaaaaaaaaaegadbaaaaaaaaaaa
dgaaaaaghccabaaaadaaaaaaegiccaaaabaaaaaaaaaaaaaadoaaaaabejfdeheo
kiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadadaaaajcaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaajjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaadaaaaaaapahaaaakbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafaepfdejfeejepeoaafeeffiedepepfceeaaeoepfcenebemaafeebeo
ehefeofeaaedepemepfcaaklepfdeheoiaaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaheaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadamaaaaheaaaaaaadaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaheaaaaaaaeaaaaaaaaaaaaaaadaaaaaaadaaaaaaahaiaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "opengl " {
// Stats: 57 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"!!ARBvp1.0
PARAM c[25] = { { 1, 0, 10, 20 },
		state.matrix.mvp,
		program.local[5..23],
		{ -1, 0.5 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MOV R1.xyz, c[19];
DP3 R0.z, R1, c[11];
DP3 R0.x, R1, c[9];
DP3 R0.y, R1, c[10];
DP3 R0.w, R0, R0;
RSQ R0.w, R0.w;
MUL R1.xyz, R0.w, R0;
MOV R0.xyz, vertex.attrib[14];
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[7];
DP4 R2.y, R0, c[6];
DP4 R2.x, R0, c[5];
DP4 R1.w, c[23], c[23];
RSQ R0.x, R1.w;
MUL R0.xyz, R0.x, c[23];
ADD R2.xyz, R2, -c[22];
DP3 R0.x, R0, R2;
MOV R0.y, c[15].w;
MUL R0.y, R0, c[18].x;
ADD R0.x, R0, c[21];
MOV R2.xyz, vertex.attrib[14];
MOV R1.w, vertex.position;
MUL R0.z, R0.y, c[17].x;
MAX R0.x, R0, c[0].y;
MUL R0.y, R0.x, c[17].x;
MUL R0.x, R0.z, R0;
MIN R0.z, R0.y, c[0].x;
MOV R0.y, c[0].x;
ADD R0.w, -R0.y, c[20].x;
MAX R0.z, R0, c[0].y;
ABS R0.y, R0.z;
MAD R0.y, R0, R0.w, c[0].x;
MAX R0.y, R0, c[0];
ADD R2.xyz, vertex.position, -R2;
MAD R2.xyz, R2, R0.y, vertex.attrib[14];
MAD R1.xyz, R1, R0.x, R2;
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
END
# 57 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
// Stats: 62 math
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
Vector 22 [V_FR_ActivatorPlanePosition]
Vector 23 [V_FR_ActivatorPlaneNormal]
"vs_2_0
dcl_position0 v0
dcl_texcoord0 v1
dcl_normal0 v2
dcl_tangent0 v3
def c24, 1.00000000, 0.00000000, -1.00000000, 10.00000000
def c25, 20.00000000, -1.00000000, 0.50000000, 0
mov r0.xyz, c10
dp3 r2.z, c19, r0
mov r0.xyz, c9
mov r1.xyz, c8
dp3 r2.x, c19, r1
dp3 r2.y, c19, r0
dp3 r0.x, r2, r2
rsq r0.x, r0.x
dp4 r0.w, c23, c23
mul r0.xyz, r0.x, r2
mov r1.w, c24.x
mov r1.xyz, v3
dp4 r2.z, r1, c6
dp4 r2.y, r1, c5
dp4 r2.x, r1, c4
rsq r0.w, r0.w
mul r1.xyz, r0.w, c23
add r2.xyz, r2, -c22
dp3 r0.w, r1, r2
mov r1.x, c18
mul r1.x, c15.w, r1
add r0.w, r0, c21.x
mul r1.y, r1.x, c17.x
max r0.w, r0, c24.y
mul r1.x, r0.w, c17
mul r0.w, r1.y, r0
min r1.x, r1, c24
mov r1.y, c20.x
max r1.x, r1, c24.y
add r1.y, c24.z, r1
abs r1.x, r1
mad r1.w, r1.x, r1.y, c24.x
mov r1.xyz, v3
max r1.w, r1, c24.y
add r1.xyz, v0, -r1
mad r1.xyz, r1, r1.w, v3
mad r1.xyz, r0, r0.w, r1
mov r1.w, v0
dp4 r0.w, r1, c3
dp4 r0.z, r1, c2
dp4 r0.x, r1, c0
dp4 r0.y, r1, c1
mul r2.xyz, r0.xyww, c25.z
mul r2.y, r2, c12.x
mad oT5.xy, r2.z, c13.zwzw, r2
frc r2.xyz, v2
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
"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorPlanePosition]
Vector 176 [V_FR_ActivatorPlaneNormal]
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
eefiecedkhgcmjocjdklfeahnjiajjmedakbmkjoabaaaaaaeaaiaaaaadaaaaaa
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
lmagaaaaeaaaabaakpabaaaafjaaaaaeegiocaaaaaaaaaaaamaaaaaafjaaaaae
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
egacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaakaaaaaabbaaaaajicaabaaa
aaaaaaaaegiocaaaaaaaaaaaalaaaaaaegiocaaaaaaaaaaaalaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaapgapbaaa
aaaaaaaaegiccaaaaaaaaaaaalaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkiacaaaaaaaaaaaajaaaaaadeaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaaakaabaaaaaaaaaaaakiacaaa
aaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaaakiacaaaaaaaaaaaajaaaaaa
abeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaaegbcbaaaaaaaaaaaegbcbaia
ebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaafgafbaaa
aaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaaabaaaaaabkiacaaaaaaaaaaa
ahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaa
abaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaaabaaaaaafgifcaaaaaaaaaaa
aiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaa
adaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaakgikcaaaaaaaaaaaaiaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadcaaaaajhcaabaaaaaaaaaaa
egacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaaaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabkaaaaafdcaabaaaabaaaaaaegbabaaaabaaaaaadiaaaaaidcaabaaa
abaaaaaaegaabaaaabaaaaaaegiacaaaaaaaaaaaafaaaaaadcaaaaandccabaaa
abaaaaaaegaabaaaabaaaaaaaceaaaaaaaaacaebaaaacaebaaaaaaaaaaaaaaaa
ogikcaaaaaaaaaaaafaaaaaabkaaaaafhcaabaaaabaaaaaaegbcbaaaacaaaaaa
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
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" "V_FR_EDITOR_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "tangent" TexCoord2
ConstBuffer "$Globals" 192
Vector 80 [_MainTex_ST]
Float 112 [V_FR_Fragmentum]
Float 116 [V_FR_DisplaceAmount]
Vector 128 [V_FR_DisplaceDirectionObjectPosition]
Float 144 [V_FR_FragmentsScale]
Float 148 [V_FR_DistanceToActivator]
Vector 160 [V_FR_ActivatorPlanePosition]
Vector 176 [V_FR_ActivatorPlaneNormal]
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
eefiecedigfdgdngokagmkjonjigajjdcakchflfabaaaaaahmamaaaaaeaaaaaa
daaaaaaagiaeaaaacmalaaaanmalaaaaebgpgodjdaaeaaaadaaeaaaaaaacpopp
leadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaafaa
abaaabaaaaaaaaaaaaaaahaaafaaacaaaaaaaaaaabaaafaaabaaahaaaaaaaaaa
acaaaaaaabaaaiaaaaaaaaaaadaaaaaaaeaaajaaaaaaaaaaadaaamaaahaaanaa
aaaaaaaaadaabeaaabaabeaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbfaaapka
aaaakaebaaaaialpaaaaaaaaaaaaiadpfbaaaaafbgaaapkaaaaacaebaaaaaadp
aaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapja
bpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapjabdaaaaacaaaaahia
acaaoejaaeaaaaaeaaaaahiaaaaaoeiabfaaaakabfaaffkaafaaaaadaaaaahia
aaaaoeiabeaappkaafaaaaadabaaahiaaaaaffiaaoaaoekaaeaaaaaeaaaaalia
anaakekaaaaaaaiaabaakeiaaeaaaaaeabaaahoaapaaoekaaaaakkiaaaaapeia
bdaaaaacaaaaadiaabaaoejaafaaaaadaaaaadiaaaaaoeiaabaaoekaabaaaaac
abaaabiabgaaaakaaeaaaaaeaaaaadoaaaaaoeiaabaaaaiaabaaookaafaaaaad
aaaaahiaadaaffjaaoaaoekaaeaaaaaeaaaaahiaanaaoekaadaaaajaaaaaoeia
aeaaaaaeaaaaahiaapaaoekaadaakkjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
baaaoekaacaaaaadaaaaahiaaaaaoeiaafaaoekbajaaaaadaaaaaiiaagaaoeka
agaaoekaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahiaaaaappiaagaaoeka
aiaaaaadaaaaabiaabaaoeiaaaaaoeiaacaaaaadaaaaabiaaaaaaaiaaeaaffka
alaaaaadaaaaabiaaaaaaaiabfaakkkaafaaaaadaaaaaciaaaaaaaiaacaaaaka
alaaaaadaaaaaciaaaaaffiabfaakkkaakaaaaadaaaaaciaaaaaffiabfaappka
abaaaaacabaaaciabfaaffkaacaaaaadaaaaaeiaabaaffiaaeaaaakaaeaaaaae
aaaaaciaaaaaffiaaaaakkiabfaappkaalaaaaadaaaaaciaaaaaffiabfaakkka
abaaaaacabaaahiaadaaoejaacaaaaadabaaahiaabaaoeibaaaaoejaaeaaaaae
aaaaaoiaabaajaiaaaaaffiaadaajajaabaaaaacabaaaiiabeaappkaafaaaaad
abaaabiaabaappiaacaaffkaafaaaaadabaaabiaabaaaaiaacaaaakaafaaaaad
aaaaabiaaaaaaaiaabaaaaiaabaaaaacabaaahiaadaaoekaafaaaaadacaaahia
abaaffiabcaaoekaaeaaaaaeabaaaliabbaakekaabaaaaiaacaakeiaaeaaaaae
abaaahiabdaaoekaabaakkiaabaapeiaceaaaaacacaaahiaabaaoeiaaeaaaaae
aaaaahiaacaaoeiaaaaaaaiaaaaapjiaafaaaaadabaaapiaaaaaffiaakaaoeka
aeaaaaaeabaaapiaajaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapiaalaaoeka
aaaakkiaabaaoeiaaeaaaaaeaaaaapiaamaaoekaaaaappjaaaaaoeiaafaaaaad
abaaahiaaaaapeiabgaaffkaafaaaaadabaaaiiaabaaffiaahaaaakaacaaaaad
adaaadoaabaakkiaabaaomiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeia
abaaaaacaaaaammaaaaaoeiaabaaaaacadaaamoaaaaaoeiaabaaaaacacaaahoa
aiaaoekappppaaaafdeieefclmagaaaaeaaaabaakpabaaaafjaaaaaeegiocaaa
aaaaaaaaamaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabfaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaaddcbabaaaabaaaaaafpaaaaadhcbabaaaacaaaaaafpaaaaad
hcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaaddccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadhccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagiaaaaacadaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaa
adaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaadaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaadaaaaaaegacbaaaaaaaaaaa
aaaaaaaihcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
aaaaaaajhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaa
akaaaaaabbaaaaajicaabaaaaaaaaaaaegiocaaaaaaaaaaaalaaaaaaegiocaaa
aaaaaaaaalaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegiccaaaaaaaaaaaalaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaaaaaaaaibcaabaaa
aaaaaaaaakaabaaaaaaaaaaabkiacaaaaaaaaaaaajaaaaaadeaaaaahbcaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaaaadicaaaaiccaabaaaaaaaaaaa
akaabaaaaaaaaaaaakiacaaaaaaaaaaaahaaaaaaaaaaaaaiecaabaaaaaaaaaaa
akiacaaaaaaaaaaaajaaaaaaabeaaaaaaaaaialpdcaaaaajccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaiadpdeaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaihcaabaaaabaaaaaa
egbcbaaaaaaaaaaaegbcbaiaebaaaaaaadaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaafgafbaaaaaaaaaaaagbjbaaaadaaaaaadiaaaaajbcaabaaa
abaaaaaabkiacaaaaaaaaaaaahaaaaaadkiacaaaadaaaaaabeaaaaaadiaaaaai
bcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaaaaaaaaaahaaaaaadiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaajhcaabaaa
abaaaaaafgifcaaaaaaaaaaaaiaaaaaaegiccaaaadaaaaaabbaaaaaadcaaaaal
hcaabaaaabaaaaaaegiccaaaadaaaaaabaaaaaaaagiacaaaaaaaaaaaaiaaaaaa
egacbaaaabaaaaaadcaaaaalhcaabaaaabaaaaaaegiccaaaadaaaaaabcaaaaaa
kgikcaaaaaaaaaaaaiaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dcaaaaajhcaabaaaaaaaaaaaegacbaaaabaaaaaaagaabaaaaaaaaaaajgahbaaa
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
mgaabaaaabaaaaaadoaaaaabejfdeheokiaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaadadaaaajcaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaadaaaaaaapahaaaakbaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaafaepfdejfeejepeoaafeeffi
edepepfceeaaeoepfcenebemaafeebeoehefeofeaaedepemepfcaaklepfdeheo
jiaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaaimaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaadamaaaaimaaaaaa
adaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaimaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaadaaaaaaahaiaaaaimaaaaaaafaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
}
Program "fp" {
SubProgram "opengl " {
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
// Stats: 6 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_ON" }
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
ConstBuffer "$Globals" 128
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
ConstBuffer "$Globals" 128
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
ConstBuffer "$Globals" 192
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
ConstBuffer "$Globals" 192
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "V_FR_EDITOR_OFF" }
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