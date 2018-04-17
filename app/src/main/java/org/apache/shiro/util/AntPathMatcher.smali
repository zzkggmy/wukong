.class public Lorg/apache/shiro/util/AntPathMatcher;
.super Ljava/lang/Object;
.source "AntPathMatcher.java"

# interfaces
.implements Lorg/apache/shiro/util/PatternMatcher;


# static fields
.field public static final DEFAULT_PATH_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private pathSeparator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "/"

    iput-object v0, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    return-void
.end method

.method private matchStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 247
    .local v11, "patArr":[C
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    .line 248
    .local v16, "strArr":[C
    const/4 v13, 0x0

    .line 249
    .local v13, "patIdxStart":I
    array-length v0, v11

    move/from16 v20, v0

    add-int/lit8 v12, v20, -0x1

    .line 250
    .local v12, "patIdxEnd":I
    const/16 v18, 0x0

    .line 251
    .local v18, "strIdxStart":I
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v17, v20, -0x1

    .line 254
    .local v17, "strIdxEnd":I
    const/4 v5, 0x0

    .line 255
    .local v5, "containsStar":Z
    move-object v3, v11

    .local v3, "arr$":[C
    array-length v10, v3

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-char v2, v3, v8

    .line 256
    .local v2, "aPatArr":C
    const/16 v20, 0x2a

    move/from16 v0, v20

    if-ne v2, v0, :cond_1

    .line 257
    const/4 v5, 0x1

    .line 262
    .end local v2    # "aPatArr":C
    :cond_0
    if-nez v5, :cond_5

    .line 264
    move/from16 v0, v17

    if-eq v12, v0, :cond_2

    .line 265
    const/16 v20, 0x0

    .line 376
    :goto_1
    return v20

    .line 255
    .restart local v2    # "aPatArr":C
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "aPatArr":C
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-gt v7, v12, :cond_4

    .line 268
    aget-char v4, v11, v7

    .line 269
    .local v4, "ch":C
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-eq v4, v0, :cond_3

    .line 270
    aget-char v20, v16, v7

    move/from16 v0, v20

    if-eq v4, v0, :cond_3

    .line 271
    const/16 v20, 0x0

    goto :goto_1

    .line 267
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 275
    .end local v4    # "ch":C
    :cond_4
    const/16 v20, 0x1

    goto :goto_1

    .line 279
    .end local v7    # "i":I
    :cond_5
    if-nez v12, :cond_7

    .line 280
    const/16 v20, 0x1

    goto :goto_1

    .line 290
    .restart local v4    # "ch":C
    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 291
    add-int/lit8 v18, v18, 0x1

    .line 284
    .end local v4    # "ch":C
    :cond_7
    aget-char v4, v11, v13

    .restart local v4    # "ch":C
    const/16 v20, 0x2a

    move/from16 v0, v20

    if-eq v4, v0, :cond_8

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_8

    .line 285
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    .line 286
    aget-char v20, v16, v18

    move/from16 v0, v20

    if-eq v4, v0, :cond_6

    .line 287
    const/16 v20, 0x0

    goto :goto_1

    .line 293
    :cond_8
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_c

    .line 296
    move v7, v13

    .restart local v7    # "i":I
    :goto_3
    if-gt v7, v12, :cond_a

    .line 297
    aget-char v20, v11, v7

    const/16 v21, 0x2a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 298
    const/16 v20, 0x0

    goto :goto_1

    .line 296
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 301
    :cond_a
    const/16 v20, 0x1

    goto :goto_1

    .line 311
    .end local v7    # "i":I
    :cond_b
    add-int/lit8 v12, v12, -0x1

    .line 312
    add-int/lit8 v17, v17, -0x1

    .line 305
    :cond_c
    aget-char v4, v11, v12

    const/16 v20, 0x2a

    move/from16 v0, v20

    if-eq v4, v0, :cond_d

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_d

    .line 306
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    .line 307
    aget-char v20, v16, v17

    move/from16 v0, v20

    if-eq v4, v0, :cond_b

    .line 308
    const/16 v20, 0x0

    goto :goto_1

    .line 314
    :cond_d
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_10

    .line 317
    move v7, v13

    .restart local v7    # "i":I
    :goto_4
    if-gt v7, v12, :cond_f

    .line 318
    aget-char v20, v11, v7

    const/16 v21, 0x2a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 319
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 317
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 322
    :cond_f
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 327
    .end local v7    # "i":I
    :cond_10
    :goto_5
    if-eq v13, v12, :cond_18

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_18

    .line 328
    const/4 v14, -0x1

    .line 329
    .local v14, "patIdxTmp":I
    add-int/lit8 v7, v13, 0x1

    .restart local v7    # "i":I
    :goto_6
    if-gt v7, v12, :cond_11

    .line 330
    aget-char v20, v11, v7

    const/16 v21, 0x2a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 331
    move v14, v7

    .line 335
    :cond_11
    add-int/lit8 v20, v13, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_13

    .line 337
    add-int/lit8 v13, v13, 0x1

    .line 338
    goto :goto_5

    .line 329
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 342
    :cond_13
    sub-int v20, v14, v13

    add-int/lit8 v15, v20, -0x1

    .line 343
    .local v15, "patLength":I
    sub-int v20, v17, v18

    add-int/lit8 v19, v20, 0x1

    .line 344
    .local v19, "strLength":I
    const/4 v6, -0x1

    .line 346
    .local v6, "foundIdx":I
    const/4 v7, 0x0

    :goto_7
    sub-int v20, v19, v15

    move/from16 v0, v20

    if-gt v7, v0, :cond_16

    .line 347
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_8
    if-ge v9, v15, :cond_15

    .line 348
    add-int v20, v13, v9

    add-int/lit8 v20, v20, 0x1

    aget-char v4, v11, v20

    .line 349
    const/16 v20, 0x3f

    move/from16 v0, v20

    if-eq v4, v0, :cond_14

    .line 350
    add-int v20, v18, v7

    add-int v20, v20, v9

    aget-char v20, v16, v20

    move/from16 v0, v20

    if-eq v4, v0, :cond_14

    .line 346
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 347
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 356
    :cond_15
    add-int v6, v18, v7

    .line 360
    .end local v9    # "j":I
    :cond_16
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_17

    .line 361
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 364
    :cond_17
    move v13, v14

    .line 365
    add-int v18, v6, v15

    .line 366
    goto :goto_5

    .line 370
    .end local v6    # "foundIdx":I
    .end local v7    # "i":I
    .end local v14    # "patIdxTmp":I
    .end local v15    # "patLength":I
    .end local v19    # "strLength":I
    :cond_18
    move v7, v13

    .restart local v7    # "i":I
    :goto_9
    if-gt v7, v12, :cond_1a

    .line 371
    aget-char v20, v11, v7

    const/16 v21, 0x2a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    .line 372
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 370
    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 376
    :cond_1a
    const/16 v20, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method protected doMatch(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 19
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "fullMatch"    # Z

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 110
    const/16 v17, 0x0

    .line 229
    :goto_0
    return v17

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 114
    .local v11, "pattDirs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "pathDirs":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 117
    .local v13, "pattIdxStart":I
    array-length v0, v11

    move/from16 v17, v0

    add-int/lit8 v12, v17, -0x1

    .line 118
    .local v12, "pattIdxEnd":I
    const/4 v10, 0x0

    .line 119
    .local v10, "pathIdxStart":I
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v9, v17, -0x1

    .line 122
    .local v9, "pathIdxEnd":I
    :goto_1
    if-gt v13, v12, :cond_1

    if-gt v10, v9, :cond_1

    .line 123
    aget-object v5, v11, v13

    .line 124
    .local v5, "patDir":Ljava/lang/String;
    const-string v17, "**"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 134
    .end local v5    # "patDir":Ljava/lang/String;
    :cond_1
    if-le v10, v9, :cond_b

    .line 136
    if-le v13, v12, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    goto :goto_0

    .line 127
    .restart local v5    # "patDir":Ljava/lang/String;
    :cond_2
    aget-object v17, v8, v10

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lorg/apache/shiro/util/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 128
    const/16 v17, 0x0

    goto :goto_0

    .line 130
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 131
    add-int/lit8 v10, v10, 0x1

    .line 132
    goto :goto_1

    .line 137
    .end local v5    # "patDir":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 140
    :cond_6
    if-nez p3, :cond_7

    .line 141
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 143
    :cond_7
    if-ne v13, v12, :cond_8

    aget-object v17, v11, v13

    const-string v18, "*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 145
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 147
    :cond_8
    move v3, v13

    .local v3, "i":I
    :goto_2
    if-gt v3, v12, :cond_a

    .line 148
    aget-object v17, v11, v3

    const-string v18, "**"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 149
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 147
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 152
    :cond_a
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 153
    .end local v3    # "i":I
    :cond_b
    if-le v13, v12, :cond_c

    .line 155
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 156
    :cond_c
    if-nez p3, :cond_e

    const-string v17, "**"

    aget-object v18, v11, v13

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 158
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 170
    .restart local v5    # "patDir":Ljava/lang/String;
    :cond_d
    add-int/lit8 v12, v12, -0x1

    .line 171
    add-int/lit8 v9, v9, -0x1

    .line 162
    .end local v5    # "patDir":Ljava/lang/String;
    :cond_e
    if-gt v13, v12, :cond_f

    if-gt v10, v9, :cond_f

    .line 163
    aget-object v5, v11, v12

    .line 164
    .restart local v5    # "patDir":Ljava/lang/String;
    const-string v17, "**"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 173
    .end local v5    # "patDir":Ljava/lang/String;
    :cond_f
    if-le v10, v9, :cond_13

    .line 175
    move v3, v13

    .restart local v3    # "i":I
    :goto_3
    if-gt v3, v12, :cond_12

    .line 176
    aget-object v17, v11, v3

    const-string v18, "**"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 177
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 167
    .end local v3    # "i":I
    .restart local v5    # "patDir":Ljava/lang/String;
    :cond_10
    aget-object v17, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v1}, Lorg/apache/shiro/util/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 168
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 175
    .end local v5    # "patDir":Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 180
    :cond_12
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 183
    .end local v3    # "i":I
    :cond_13
    :goto_4
    if-eq v13, v12, :cond_1b

    if-gt v10, v9, :cond_1b

    .line 184
    const/4 v6, -0x1

    .line 185
    .local v6, "patIdxTmp":I
    add-int/lit8 v3, v13, 0x1

    .restart local v3    # "i":I
    :goto_5
    if-gt v3, v12, :cond_14

    .line 186
    aget-object v17, v11, v3

    const-string v18, "**"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    .line 187
    move v6, v3

    .line 191
    :cond_14
    add-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_16

    .line 193
    add-int/lit8 v13, v13, 0x1

    .line 194
    goto :goto_4

    .line 185
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 198
    :cond_16
    sub-int v17, v6, v13

    add-int/lit8 v7, v17, -0x1

    .line 199
    .local v7, "patLength":I
    sub-int v17, v9, v10

    add-int/lit8 v14, v17, 0x1

    .line 200
    .local v14, "strLength":I
    const/4 v2, -0x1

    .line 203
    .local v2, "foundIdx":I
    const/4 v3, 0x0

    :goto_6
    sub-int v17, v14, v7

    move/from16 v0, v17

    if-gt v3, v0, :cond_19

    .line 204
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_7
    if-ge v4, v7, :cond_18

    .line 205
    add-int v17, v13, v4

    add-int/lit8 v17, v17, 0x1

    aget-object v15, v11, v17

    .line 206
    .local v15, "subPat":Ljava/lang/String;
    add-int v17, v10, v3

    add-int v17, v17, v4

    aget-object v16, v8, v17

    .line 207
    .local v16, "subStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lorg/apache/shiro/util/AntPathMatcher;->matchStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_17

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 204
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 211
    .end local v15    # "subPat":Ljava/lang/String;
    .end local v16    # "subStr":Ljava/lang/String;
    :cond_18
    add-int v2, v10, v3

    .line 215
    .end local v4    # "j":I
    :cond_19
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_1a

    .line 216
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 219
    :cond_1a
    move v13, v6

    .line 220
    add-int v10, v2, v7

    .line 221
    goto :goto_4

    .line 223
    .end local v2    # "foundIdx":I
    .end local v3    # "i":I
    .end local v6    # "patIdxTmp":I
    .end local v7    # "patLength":I
    .end local v14    # "strLength":I
    :cond_1b
    move v3, v13

    .restart local v3    # "i":I
    :goto_8
    if-gt v3, v12, :cond_1d

    .line 224
    aget-object v17, v11, v3

    const-string v18, "**"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    .line 225
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 223
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 229
    :cond_1d
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public extractPathWithinPattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    .line 396
    iget-object v6, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-static {p1, v6}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "patternParts":[Ljava/lang/String;
    iget-object v6, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-static {p2, v6}, Lorg/apache/shiro/util/StringUtils;->tokenizeToStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "pathParts":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 403
    .local v5, "puts":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_4

    .line 404
    aget-object v3, v4, v1

    .line 405
    .local v3, "patternPart":Ljava/lang/String;
    const/16 v6, 0x2a

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gt v6, v8, :cond_0

    const/16 v6, 0x3f

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-le v6, v8, :cond_3

    :cond_0
    array-length v6, v2

    add-int/lit8 v7, v1, 0x1

    if-lt v6, v7, :cond_3

    .line 406
    if-gtz v5, :cond_1

    if-nez v1, :cond_2

    iget-object v6, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 407
    :cond_1
    iget-object v6, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_2
    aget-object v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    add-int/lit8 v5, v5, 0x1

    .line 403
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v3    # "patternPart":Ljava/lang/String;
    :cond_4
    array-length v1, v4

    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_7

    .line 416
    if-gtz v5, :cond_5

    if-lez v1, :cond_6

    .line 417
    :cond_5
    iget-object v6, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_6
    aget-object v6, v2, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public isPattern(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 82
    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/util/AntPathMatcher;->doMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matchStart(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/shiro/util/AntPathMatcher;->doMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Lorg/apache/shiro/util/AntPathMatcher;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPathSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathSeparator"    # Ljava/lang/String;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .end local p1    # "pathSeparator":Ljava/lang/String;
    :goto_0
    iput-object p1, p0, Lorg/apache/shiro/util/AntPathMatcher;->pathSeparator:Ljava/lang/String;

    .line 78
    return-void

    .line 77
    .restart local p1    # "pathSeparator":Ljava/lang/String;
    :cond_0
    const-string p1, "/"

    goto :goto_0
.end method
