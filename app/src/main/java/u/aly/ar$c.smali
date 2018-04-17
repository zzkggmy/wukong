.class Lu/aly/ar$c;
.super Lu/aly/dj;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj",
        "<",
        "Lu/aly/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/ar$1;)V
    .locals 0

    .prologue
    .line 960
    invoke-direct {p0}, Lu/aly/ar$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/ar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 965
    check-cast p1, Lu/aly/de;

    .line 966
    iget-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 967
    iget-object v0, p2, Lu/aly/ar;->e:Lu/aly/bm;

    invoke-virtual {v0}, Lu/aly/bm;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 968
    iget-object v0, p2, Lu/aly/ar;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 969
    iget-object v0, p2, Lu/aly/ar;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 970
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 971
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 974
    :cond_0
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 975
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 977
    :cond_1
    invoke-virtual {p2}, Lu/aly/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 978
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 980
    :cond_2
    invoke-virtual {p2}, Lu/aly/ar;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 983
    :cond_3
    invoke-virtual {p2}, Lu/aly/ar;->D()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 984
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 986
    :cond_4
    invoke-virtual {p2}, Lu/aly/ar;->G()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 987
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 989
    :cond_5
    invoke-virtual {p2}, Lu/aly/ar;->J()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 990
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 992
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 993
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 994
    iget-object v0, p2, Lu/aly/ar;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 996
    :cond_7
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 997
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 999
    :cond_8
    invoke-virtual {p2}, Lu/aly/ar;->o()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1000
    iget-object v0, p2, Lu/aly/ar;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1002
    :cond_9
    invoke-virtual {p2}, Lu/aly/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1003
    iget-object v0, p2, Lu/aly/ar;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1005
    :cond_a
    invoke-virtual {p2}, Lu/aly/ar;->D()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1006
    iget-object v0, p2, Lu/aly/ar;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1008
    :cond_b
    invoke-virtual {p2}, Lu/aly/ar;->G()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1009
    iget v0, p2, Lu/aly/ar;->j:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 1011
    :cond_c
    invoke-virtual {p2}, Lu/aly/ar;->J()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1012
    iget-object v0, p2, Lu/aly/ar;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1014
    :cond_d
    return-void
.end method

.method public bridge synthetic a(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 960
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->a(Lu/aly/cy;Lu/aly/ar;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/ar;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1019
    check-cast p1, Lu/aly/de;

    .line 1020
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    .line 1021
    invoke-virtual {p2, v2}, Lu/aly/ar;->a(Z)V

    .line 1022
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    invoke-static {v0}, Lu/aly/bm;->a(I)Lu/aly/bm;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->e:Lu/aly/bm;

    .line 1023
    invoke-virtual {p2, v2}, Lu/aly/ar;->e(Z)V

    .line 1024
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->f:Ljava/lang/String;

    .line 1025
    invoke-virtual {p2, v2}, Lu/aly/ar;->f(Z)V

    .line 1026
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->g:Ljava/lang/String;

    .line 1027
    invoke-virtual {p2, v2}, Lu/aly/ar;->g(Z)V

    .line 1028
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1029
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->b:Ljava/lang/String;

    .line 1031
    invoke-virtual {p2, v2}, Lu/aly/ar;->b(Z)V

    .line 1033
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1034
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    iput v1, p2, Lu/aly/ar;->c:I

    .line 1035
    invoke-virtual {p2, v2}, Lu/aly/ar;->c(Z)V

    .line 1037
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1038
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->d:Ljava/lang/String;

    .line 1039
    invoke-virtual {p2, v2}, Lu/aly/ar;->d(Z)V

    .line 1041
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1042
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->h:Ljava/lang/String;

    .line 1043
    invoke-virtual {p2, v2}, Lu/aly/ar;->h(Z)V

    .line 1045
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1046
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/ar;->i:Ljava/lang/String;

    .line 1047
    invoke-virtual {p2, v2}, Lu/aly/ar;->i(Z)V

    .line 1049
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1050
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v1

    iput v1, p2, Lu/aly/ar;->j:I

    .line 1051
    invoke-virtual {p2, v2}, Lu/aly/ar;->j(Z)V

    .line 1053
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1054
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->k:Ljava/lang/String;

    .line 1055
    invoke-virtual {p2, v2}, Lu/aly/ar;->k(Z)V

    .line 1057
    :cond_6
    return-void
.end method

.method public bridge synthetic b(Lu/aly/cy;Lu/aly/bz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 960
    check-cast p2, Lu/aly/ar;

    invoke-virtual {p0, p1, p2}, Lu/aly/ar$c;->b(Lu/aly/cy;Lu/aly/ar;)V

    return-void
.end method
