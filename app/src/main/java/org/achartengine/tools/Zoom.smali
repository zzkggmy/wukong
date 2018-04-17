.class public Lorg/achartengine/tools/Zoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "Zoom.java"


# static fields
.field public static final ZOOM_AXIS_X:I = 0x1

.field public static final ZOOM_AXIS_XY:I = 0x0

.field public static final ZOOM_AXIS_Y:I = 0x2


# instance fields
.field private limitsReachedX:Z

.field private limitsReachedY:Z

.field private mZoomIn:Z

.field private mZoomListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/tools/ZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomRate:F


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;ZF)V
    .locals 2
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;
    .param p2, "in"    # Z
    .param p3, "rate"    # F

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    .line 37
    iput-boolean v1, p0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 39
    iput-boolean v1, p0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 57
    iput-boolean p2, p0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    .line 58
    invoke-virtual {p0, p3}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 59
    return-void
.end method

.method private declared-synchronized notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V
    .locals 3
    .param p1, "e"    # Lorg/achartengine/tools/ZoomEvent;

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 163
    .local v1, "listener":Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1, p1}, Lorg/achartengine/tools/ZoomListener;->zoomApplied(Lorg/achartengine/tools/ZoomEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 165
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public apply(I)V
    .locals 38
    .param p1, "zoom_axis"    # I

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v5, v5, Lorg/achartengine/chart/XYChart;

    if-eqz v5, :cond_14

    .line 75
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v31

    .line 76
    .local v31, "scales":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v31

    if-ge v10, v0, :cond_15

    .line 77
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/achartengine/tools/Zoom;->getRange(I)[D

    move-result-object v17

    .line 78
    .local v17, "range":[D
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Lorg/achartengine/tools/Zoom;->checkRange([DI)V

    .line 79
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomLimits()[D

    move-result-object v4

    .line 81
    .local v4, "limits":[D
    const/4 v5, 0x0

    aget-wide v32, v17, v5

    const/4 v5, 0x1

    aget-wide v34, v17, v5

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v18, v32, v34

    .line 82
    .local v18, "centerX":D
    const/4 v5, 0x2

    aget-wide v32, v17, v5

    const/4 v5, 0x3

    aget-wide v34, v17, v5

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v20, v32, v34

    .line 83
    .local v20, "centerY":D
    const/4 v5, 0x1

    aget-wide v32, v17, v5

    const/4 v5, 0x0

    aget-wide v34, v17, v5

    sub-double v28, v32, v34

    .line 84
    .local v28, "newWidth":D
    const/4 v5, 0x3

    aget-wide v32, v17, v5

    const/4 v5, 0x2

    aget-wide v34, v17, v5

    sub-double v26, v32, v34

    .line 85
    .local v26, "newHeight":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v28, v32

    sub-double v6, v18, v32

    .line 86
    .local v6, "newXMin":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v28, v32

    add-double v8, v18, v32

    .line 87
    .local v8, "newXMax":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v26, v32

    sub-double v12, v20, v32

    .line 88
    .local v12, "newYMin":D
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v26, v32

    add-double v14, v20, v32

    .line 91
    .local v14, "newYMax":D
    if-nez v10, :cond_2

    .line 92
    if-eqz v4, :cond_b

    const/4 v5, 0x0

    aget-wide v32, v4, v5

    cmpg-double v5, v6, v32

    if-lez v5, :cond_0

    const/4 v5, 0x1

    aget-wide v32, v4, v5

    cmpl-double v5, v8, v32

    if-ltz v5, :cond_b

    :cond_0
    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    .line 93
    if-eqz v4, :cond_c

    const/4 v5, 0x2

    aget-wide v32, v4, v5

    cmpg-double v5, v12, v32

    if-lez v5, :cond_1

    const/4 v5, 0x3

    aget-wide v32, v4, v5

    cmpl-double v5, v14, v32

    if-ltz v5, :cond_c

    :cond_1
    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    .line 96
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v5, :cond_f

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_3

    if-nez p1, :cond_4

    .line 98
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v11

    if-gez v5, :cond_d

    .line 105
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    move/from16 v0, p1

    if-eq v0, v5, :cond_5

    if-nez p1, :cond_6

    .line 106
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v11

    if-gez v5, :cond_e

    .line 124
    :cond_6
    :goto_4
    if-eqz v4, :cond_13

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitX()D

    move-result-wide v32

    const/4 v5, 0x1

    aget-wide v34, v4, v5

    const/4 v5, 0x0

    aget-wide v36, v4, v5

    sub-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    .line 126
    .local v22, "minX":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitY()D

    move-result-wide v32

    const/4 v5, 0x3

    aget-wide v34, v4, v5

    const/4 v5, 0x2

    aget-wide v36, v4, v5

    sub-double v34, v34, v36

    invoke-static/range {v32 .. v35}, Ljava/lang/Math;->min(DD)D

    move-result-wide v24

    .line 131
    .local v24, "minY":D
    :goto_5
    move-wide/from16 v0, v28

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    .line 132
    move-wide/from16 v0, v26

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    .line 134
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_7

    if-nez p1, :cond_8

    .line 135
    :cond_7
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v28, v32

    sub-double v6, v18, v32

    .line 136
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v28, v32

    add-double v8, v18, v32

    move-object/from16 v5, p0

    .line 137
    invoke-virtual/range {v5 .. v10}, Lorg/achartengine/tools/Zoom;->setXRange(DDI)V

    .line 139
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x2

    move/from16 v0, p1

    if-eq v0, v5, :cond_9

    if-nez p1, :cond_a

    .line 140
    :cond_9
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v26, v32

    sub-double v12, v20, v32

    .line 141
    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v32, v26, v32

    add-double v14, v20, v32

    move-object/from16 v11, p0

    move/from16 v16, v10

    .line 142
    invoke-virtual/range {v11 .. v16}, Lorg/achartengine/tools/Zoom;->setYRange(DDI)V

    .line 76
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 92
    .end local v22    # "minX":D
    .end local v24    # "minY":D
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 93
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 101
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v5

    move-wide/from16 v32, v0

    div-double v28, v28, v32

    goto/16 :goto_3

    .line 108
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v5

    move-wide/from16 v32, v0

    div-double v26, v26, v32

    goto/16 :goto_4

    .line 112
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomXEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedX:Z

    if-nez v5, :cond_11

    const/4 v5, 0x1

    move/from16 v0, p1

    if-eq v0, v5, :cond_10

    if-nez p1, :cond_11

    .line 114
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v5

    move-wide/from16 v32, v0

    mul-double v28, v28, v32

    .line 117
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isZoomYEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->limitsReachedY:Z

    if-nez v5, :cond_6

    const/4 v5, 0x2

    move/from16 v0, p1

    if-eq v0, v5, :cond_12

    if-nez p1, :cond_6

    .line 119
    :cond_12
    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    float-to-double v0, v5

    move-wide/from16 v32, v0

    mul-double v26, v26, v32

    goto/16 :goto_4

    .line 128
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitX()D

    move-result-wide v22

    .line 129
    .restart local v22    # "minX":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getZoomInLimitY()D

    move-result-wide v24

    .restart local v24    # "minY":D
    goto/16 :goto_5

    .line 146
    .end local v4    # "limits":[D
    .end local v6    # "newXMin":D
    .end local v8    # "newXMax":D
    .end local v10    # "i":I
    .end local v12    # "newYMin":D
    .end local v14    # "newYMax":D
    .end local v17    # "range":[D
    .end local v18    # "centerX":D
    .end local v20    # "centerY":D
    .end local v22    # "minX":D
    .end local v24    # "minY":D
    .end local v26    # "newHeight":D
    .end local v28    # "newWidth":D
    .end local v31    # "scales":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/tools/Zoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v5, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v5}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v30

    .line 147
    .local v30, "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    if-eqz v5, :cond_16

    .line 148
    invoke-virtual/range {v30 .. v30}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v5

    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    mul-float/2addr v5, v11

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    .line 153
    .end local v30    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    :cond_15
    :goto_6
    new-instance v5, Lorg/achartengine/tools/ZoomEvent;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/achartengine/tools/Zoom;->mZoomIn:Z

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v5, v11, v0}, Lorg/achartengine/tools/ZoomEvent;-><init>(ZF)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/achartengine/tools/Zoom;->notifyZoomListeners(Lorg/achartengine/tools/ZoomEvent;)V

    .line 154
    return-void

    .line 150
    .restart local v30    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    :cond_16
    invoke-virtual/range {v30 .. v30}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v5

    move-object/from16 v0, p0

    iget v11, v0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    div-float/2addr v5, v11

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    goto :goto_6
.end method

.method public declared-synchronized notifyZoomResetListeners()V
    .locals 3

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/ZoomListener;

    .line 172
    .local v1, "listener":Lorg/achartengine/tools/ZoomListener;
    invoke-interface {v1}, Lorg/achartengine/tools/ZoomListener;->zoomReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/achartengine/tools/ZoomListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 174
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Zoom;->mZoomListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setZoomRate(F)V
    .locals 0
    .param p1, "rate"    # F

    .prologue
    .line 67
    iput p1, p0, Lorg/achartengine/tools/Zoom;->mZoomRate:F

    .line 68
    return-void
.end method
