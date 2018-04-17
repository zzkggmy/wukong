.class Lu/aly/au$c;
.super Lu/aly/dj;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dj",
        "<",
        "Lu/aly/au;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0}, Lu/aly/dj;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/au$1;)V
    .locals 0

    .prologue
    .line 1402
    invoke-direct {p0}, Lu/aly/au$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cy;Lu/aly/au;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    .line 1407
    check-cast p1, Lu/aly/de;

    .line 1408
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 1409
    invoke-virtual {p2}, Lu/aly/au;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1412
    :cond_0
    invoke-virtual {p2}, Lu/aly/au;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1415
    :cond_1
    invoke-virtual {p2}, Lu/aly/au;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1416
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1418
    :cond_2
    invoke-virtual {p2}, Lu/aly/au;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1419
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1421
    :cond_3
    invoke-virtual {p2}, Lu/aly/au;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1422
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1424
    :cond_4
    invoke-virtual {p2}, Lu/aly/au;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1425
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1427
    :cond_5
    invoke-virtual {p2}, Lu/aly/au;->x()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1428
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1430
    :cond_6
    invoke-virtual {p2}, Lu/aly/au;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1431
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1433
    :cond_7
    invoke-virtual {p2}, Lu/aly/au;->D()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1434
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1436
    :cond_8
    invoke-virtual {p2}, Lu/aly/au;->G()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1437
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1439
    :cond_9
    invoke-virtual {p2}, Lu/aly/au;->J()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1440
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1442
    :cond_a
    invoke-virtual {p2}, Lu/aly/au;->M()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1443
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1445
    :cond_b
    invoke-virtual {p2}, Lu/aly/au;->P()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1446
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1448
    :cond_c
    invoke-virtual {p2}, Lu/aly/au;->S()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1449
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1451
    :cond_d
    invoke-virtual {p2}, Lu/aly/au;->V()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1452
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1454
    :cond_e
    invoke-virtual {p2}, Lu/aly/au;->Y()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1455
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1457
    :cond_f
    invoke-virtual {p2}, Lu/aly/au;->ab()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1458
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1460
    :cond_10
    invoke-virtual {p2}, Lu/aly/au;->ae()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1461
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 1463
    :cond_11
    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(Ljava/util/BitSet;I)V

    .line 1464
    invoke-virtual {p2}, Lu/aly/au;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1465
    iget-object v0, p2, Lu/aly/au;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1467
    :cond_12
    invoke-virtual {p2}, Lu/aly/au;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1468
    iget-object v0, p2, Lu/aly/au;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1470
    :cond_13
    invoke-virtual {p2}, Lu/aly/au;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1471
    iget-object v0, p2, Lu/aly/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1473
    :cond_14
    invoke-virtual {p2}, Lu/aly/au;->o()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1474
    iget-object v0, p2, Lu/aly/au;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1476
    :cond_15
    invoke-virtual {p2}, Lu/aly/au;->r()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1477
    iget-object v0, p2, Lu/aly/au;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1479
    :cond_16
    invoke-virtual {p2}, Lu/aly/au;->u()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1480
    iget-object v0, p2, Lu/aly/au;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1482
    :cond_17
    invoke-virtual {p2}, Lu/aly/au;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1483
    iget-object v0, p2, Lu/aly/au;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1485
    :cond_18
    invoke-virtual {p2}, Lu/aly/au;->A()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1486
    iget-object v0, p2, Lu/aly/au;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1488
    :cond_19
    invoke-virtual {p2}, Lu/aly/au;->D()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1489
    iget-object v0, p2, Lu/aly/au;->i:Lu/aly/bk;

    invoke-virtual {v0, p1}, Lu/aly/bk;->b(Lu/aly/cy;)V

    .line 1491
    :cond_1a
    invoke-virtual {p2}, Lu/aly/au;->G()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1492
    iget-boolean v0, p2, Lu/aly/au;->j:Z

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Z)V

    .line 1494
    :cond_1b
    invoke-virtual {p2}, Lu/aly/au;->J()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1495
    iget-boolean v0, p2, Lu/aly/au;->k:Z

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Z)V

    .line 1497
    :cond_1c
    invoke-virtual {p2}, Lu/aly/au;->M()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1498
    iget-object v0, p2, Lu/aly/au;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1500
    :cond_1d
    invoke-virtual {p2}, Lu/aly/au;->P()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1501
    iget-object v0, p2, Lu/aly/au;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1503
    :cond_1e
    invoke-virtual {p2}, Lu/aly/au;->S()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1504
    iget-wide v0, p2, Lu/aly/au;->n:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 1506
    :cond_1f
    invoke-virtual {p2}, Lu/aly/au;->V()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1507
    iget-object v0, p2, Lu/aly/au;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1509
    :cond_20
    invoke-virtual {p2}, Lu/aly/au;->Y()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1510
    iget-object v0, p2, Lu/aly/au;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1512
    :cond_21
    invoke-virtual {p2}, Lu/aly/au;->ab()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1513
    iget-object v0, p2, Lu/aly/au;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1515
    :cond_22
    invoke-virtual {p2}, Lu/aly/au;->ae()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1516
    iget-object v0, p2, Lu/aly/au;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 1518
    :cond_23
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
    .line 1402
    check-cast p2, Lu/aly/au;

    invoke-virtual {p0, p1, p2}, Lu/aly/au$c;->a(Lu/aly/cy;Lu/aly/au;)V

    return-void
.end method

.method public b(Lu/aly/cy;Lu/aly/au;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cf;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1523
    check-cast p1, Lu/aly/de;

    .line 1524
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lu/aly/de;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 1525
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1526
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->a:Ljava/lang/String;

    .line 1527
    invoke-virtual {p2, v4}, Lu/aly/au;->a(Z)V

    .line 1529
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1530
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->b:Ljava/lang/String;

    .line 1531
    invoke-virtual {p2, v4}, Lu/aly/au;->b(Z)V

    .line 1533
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1534
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->c:Ljava/lang/String;

    .line 1535
    invoke-virtual {p2, v4}, Lu/aly/au;->c(Z)V

    .line 1537
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1538
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->d:Ljava/lang/String;

    .line 1539
    invoke-virtual {p2, v4}, Lu/aly/au;->d(Z)V

    .line 1541
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1542
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->e:Ljava/lang/String;

    .line 1543
    invoke-virtual {p2, v4}, Lu/aly/au;->e(Z)V

    .line 1545
    :cond_4
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1546
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->f:Ljava/lang/String;

    .line 1547
    invoke-virtual {p2, v4}, Lu/aly/au;->f(Z)V

    .line 1549
    :cond_5
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1550
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->g:Ljava/lang/String;

    .line 1551
    invoke-virtual {p2, v4}, Lu/aly/au;->g(Z)V

    .line 1553
    :cond_6
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1554
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->h:Ljava/lang/String;

    .line 1555
    invoke-virtual {p2, v4}, Lu/aly/au;->h(Z)V

    .line 1557
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1558
    new-instance v1, Lu/aly/bk;

    invoke-direct {v1}, Lu/aly/bk;-><init>()V

    iput-object v1, p2, Lu/aly/au;->i:Lu/aly/bk;

    .line 1559
    iget-object v1, p2, Lu/aly/au;->i:Lu/aly/bk;

    invoke-virtual {v1, p1}, Lu/aly/bk;->a(Lu/aly/cy;)V

    .line 1560
    invoke-virtual {p2, v4}, Lu/aly/au;->i(Z)V

    .line 1562
    :cond_8
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1563
    invoke-virtual {p1}, Lu/aly/de;->t()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/au;->j:Z

    .line 1564
    invoke-virtual {p2, v4}, Lu/aly/au;->k(Z)V

    .line 1566
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1567
    invoke-virtual {p1}, Lu/aly/de;->t()Z

    move-result v1

    iput-boolean v1, p2, Lu/aly/au;->k:Z

    .line 1568
    invoke-virtual {p2, v4}, Lu/aly/au;->m(Z)V

    .line 1570
    :cond_a
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1571
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->l:Ljava/lang/String;

    .line 1572
    invoke-virtual {p2, v4}, Lu/aly/au;->n(Z)V

    .line 1574
    :cond_b
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1575
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->m:Ljava/lang/String;

    .line 1576
    invoke-virtual {p2, v4}, Lu/aly/au;->o(Z)V

    .line 1578
    :cond_c
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1579
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v2

    iput-wide v2, p2, Lu/aly/au;->n:J

    .line 1580
    invoke-virtual {p2, v4}, Lu/aly/au;->p(Z)V

    .line 1582
    :cond_d
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1583
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->o:Ljava/lang/String;

    .line 1584
    invoke-virtual {p2, v4}, Lu/aly/au;->q(Z)V

    .line 1586
    :cond_e
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1587
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->p:Ljava/lang/String;

    .line 1588
    invoke-virtual {p2, v4}, Lu/aly/au;->r(Z)V

    .line 1590
    :cond_f
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1591
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/au;->q:Ljava/lang/String;

    .line 1592
    invoke-virtual {p2, v4}, Lu/aly/au;->s(Z)V

    .line 1594
    :cond_10
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1595
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/au;->r:Ljava/lang/String;

    .line 1596
    invoke-virtual {p2, v4}, Lu/aly/au;->t(Z)V

    .line 1598
    :cond_11
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
    .line 1402
    check-cast p2, Lu/aly/au;

    invoke-virtual {p0, p1, p2}, Lu/aly/au$c;->b(Lu/aly/cy;Lu/aly/au;)V

    return-void
.end method
