.class Lu/aly/be$c;
.super Lu/aly/dj;
.source "InstantMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj",
        "<",
        "Lu/aly/be;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/be$1;)V
    .locals 0

    .prologue
    .line 600
    invoke-direct {p0}, Lu/aly/be$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/be;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 605
    check-cast p1, Lu/aly/de;

    .line 606
    iget-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 608
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 611
    :cond_0
    invoke-virtual {p2}, Lu/aly/be;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 612
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 614
    :cond_1
    invoke-virtual {p2}, Lu/aly/be;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 617
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 618
    invoke-virtual {p2}, Lu/aly/be;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 621
    iget-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/av;

    .line 622
    invoke-virtual {v0, p1}, Lu/aly/av;->b(Lu/aly/cy;)V

    goto :goto_0

    .line 626
    :cond_3
    invoke-virtual {p2}, Lu/aly/be;->p()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 629
    iget-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 630
    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/cy;)V

    goto :goto_1

    .line 634
    :cond_4
    invoke-virtual {p2}, Lu/aly/be;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 636
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 637
    iget-object v0, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ax;

    .line 638
    invoke-virtual {v0, p1}, Lu/aly/ax;->b(Lu/aly/cy;)V

    goto :goto_2

    .line 642
    :cond_5
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
    .line 600
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->a(Lu/aly/cy;Lu/aly/be;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/be;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 647
    check-cast p1, Lu/aly/de;

    .line 648
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/be;->a:Ljava/lang/String;

    .line 649
    invoke-virtual {p2, v6}, Lu/aly/be;->a(Z)V

    .line 650
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v2

    .line 651
    invoke-virtual {v2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    new-instance v3, Lu/aly/cu;

    .line 654
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/cu;-><init>(BI)V

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/cu;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->b:Ljava/util/List;

    move v0, v1

    .line 656
    :goto_0
    iget v4, v3, Lu/aly/cu;->b:I

    if-ge v0, v4, :cond_0

    .line 658
    new-instance v4, Lu/aly/av;

    invoke-direct {v4}, Lu/aly/av;-><init>()V

    .line 659
    invoke-virtual {v4, p1}, Lu/aly/av;->a(Lu/aly/cy;)V

    .line 660
    iget-object v5, p2, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p2, v6}, Lu/aly/be;->b(Z)V

    .line 665
    :cond_1
    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 667
    new-instance v3, Lu/aly/cu;

    .line 668
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    invoke-direct {v3, v7, v0}, Lu/aly/cu;-><init>(BI)V

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    iget v4, v3, Lu/aly/cu;->b:I

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/be;->c:Ljava/util/List;

    move v0, v1

    .line 670
    :goto_1
    iget v4, v3, Lu/aly/cu;->b:I

    if-ge v0, v4, :cond_2

    .line 672
    new-instance v4, Lu/aly/ax;

    invoke-direct {v4}, Lu/aly/ax;-><init>()V

    .line 673
    invoke-virtual {v4, p1}, Lu/aly/ax;->a(Lu/aly/cy;)V

    .line 674
    iget-object v5, p2, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 677
    :cond_2
    invoke-virtual {p2, v6}, Lu/aly/be;->c(Z)V

    .line 679
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 681
    new-instance v0, Lu/aly/cu;

    .line 682
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v2

    invoke-direct {v0, v7, v2}, Lu/aly/cu;-><init>(BI)V

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lu/aly/cu;->b:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p2, Lu/aly/be;->d:Ljava/util/List;

    .line 684
    :goto_2
    iget v2, v0, Lu/aly/cu;->b:I

    if-ge v1, v2, :cond_4

    .line 686
    new-instance v2, Lu/aly/ax;

    invoke-direct {v2}, Lu/aly/ax;-><init>()V

    .line 687
    invoke-virtual {v2, p1}, Lu/aly/ax;->a(Lu/aly/cy;)V

    .line 688
    iget-object v3, p2, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 691
    :cond_4
    invoke-virtual {p2, v6}, Lu/aly/be;->d(Z)V

    .line 693
    :cond_5
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
    .line 600
    check-cast p2, Lu/aly/be;

    invoke-virtual {p0, p1, p2}, Lu/aly/be$c;->b(Lu/aly/cy;Lu/aly/be;)V

    return-void
.end method
