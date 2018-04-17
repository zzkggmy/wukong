.class Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lidroid/xutils/cache/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrictLineReader"
.end annotation


# static fields
.field private static final CR:B = 0xdt

.field private static final LF:B = 0xat


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I

.field final synthetic this$0:Lcom/lidroid/xutils/cache/LruDiskCache;


# direct methods
.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;)V
    .locals 1
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1096
    const/16 v0, 0x2000

    invoke-direct {p0, p1, p2, v0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V

    .line 1097
    return-void
.end method

.method public constructor <init>(Lcom/lidroid/xutils/cache/LruDiskCache;Ljava/io/InputStream;I)V
    .locals 2
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "capacity"    # I

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->this$0:Lcom/lidroid/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1076
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 1109
    if-nez p2, :cond_0

    .line 1110
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1112
    :cond_0
    if-gez p3, :cond_1

    .line 1113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1116
    :cond_1
    iput-object p2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    .line 1117
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    .line 1118
    return-void
.end method

.method static synthetic access$0(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;)Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1204
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget-object v3, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1205
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1206
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 1208
    :cond_0
    iput v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1209
    iput v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    .line 1210
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1128
    iget-object v1, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 1129
    :try_start_0
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-eqz v0, :cond_0

    .line 1130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    .line 1131
    iget-object v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1128
    :cond_0
    monitor-exit v1

    .line 1134
    return-void

    .line 1128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 1145
    iget-object v5, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 1146
    :try_start_0
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    if-nez v4, :cond_0

    .line 1147
    new-instance v4, Ljava/io/IOException;

    const-string v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1145
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1153
    :cond_0
    :try_start_1
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-lt v4, v6, :cond_1

    .line 1154
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1157
    :cond_1
    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-ne v0, v4, :cond_4

    .line 1167
    new-instance v2, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;

    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader$1;-><init>(Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;I)V

    .line 1180
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_2
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    iget v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1182
    const/4 v4, -0x1

    iput v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    .line 1183
    invoke-direct {p0}, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->fillBuf()V

    .line 1185
    iget v0, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    :goto_1
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->end:I

    if-eq v0, v4, :cond_2

    .line 1186
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_7

    .line 1187
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v0, v4, :cond_3

    .line 1188
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1190
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1191
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1192
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5

    .end local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-object v3

    .line 1158
    :cond_4
    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_6

    .line 1159
    iget v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    if-eq v0, v4, :cond_5

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_5

    add-int/lit8 v1, v0, -0x1

    .line 1160
    .local v1, "lineEnd":I
    :goto_3
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->buf:[B

    iget v6, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    iget v7, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1161
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/lidroid/xutils/cache/LruDiskCache$StrictLineReader;->pos:I

    .line 1162
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :cond_5
    move v1, v0

    .line 1159
    goto :goto_3

    .line 1157
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1185
    .restart local v2    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
