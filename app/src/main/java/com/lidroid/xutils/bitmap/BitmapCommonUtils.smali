.class public Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;
.super Ljava/lang/Object;
.source "BitmapCommonUtils.java"


# static fields
.field private static screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method private static getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, "value":I
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 79
    :try_start_0
    const-class v3, Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 80
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 82
    .local v1, "fieldValue":I
    if-lez v1, :cond_0

    const v3, 0x7fffffff

    if-ge v1, v3, :cond_0

    .line 83
    move v2, v1

    .line 88
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "fieldValue":I
    :cond_0
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-object v1, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    if-nez v1, :cond_0

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 37
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v1, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    sput-object v1, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    .line 39
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v1, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->screenSize:Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    return-object v1
.end method

.method public static optimizeMaxSizeByView(Landroid/view/View;II)Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "maxImageWidth"    # I
    .param p2, "maxImageHeight"    # I

    .prologue
    const/4 v5, -0x2

    .line 43
    move v3, p1

    .line 44
    .local v3, "width":I
    move v0, p2

    .line 46
    .local v0, "height":I
    if-lez v3, :cond_0

    if-lez v0, :cond_0

    .line 47
    new-instance v4, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v4, v3, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    .line 72
    :goto_0
    return-object v4

    .line 50
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 51
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_2

    .line 52
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v4, :cond_7

    .line 53
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 58
    :cond_1
    :goto_1
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_8

    .line 59
    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    :cond_2
    :goto_2
    if-gtz v3, :cond_3

    const-string v4, "mMaxWidth"

    invoke-static {p0, v4}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v3

    .line 66
    :cond_3
    if-gtz v0, :cond_4

    const-string v4, "mMaxHeight"

    invoke-static {p0, v4}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getImageViewFieldValue(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 68
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/bitmap/BitmapCommonUtils;->getScreenSize(Landroid/content/Context;)Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    move-result-object v2

    .line 69
    .local v2, "screenSize":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    if-gtz v3, :cond_5

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getWidth()I

    move-result v3

    .line 70
    :cond_5
    if-gtz v0, :cond_6

    invoke-virtual {v2}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;->getHeight()I

    move-result v0

    .line 72
    :cond_6
    new-instance v4, Lcom/lidroid/xutils/bitmap/core/BitmapSize;

    invoke-direct {v4, v3, v0}, Lcom/lidroid/xutils/bitmap/core/BitmapSize;-><init>(II)V

    goto :goto_0

    .line 54
    .end local v2    # "screenSize":Lcom/lidroid/xutils/bitmap/core/BitmapSize;
    :cond_7
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v4, v5, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_1

    .line 60
    :cond_8
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v4, v5, :cond_2

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_2
.end method
