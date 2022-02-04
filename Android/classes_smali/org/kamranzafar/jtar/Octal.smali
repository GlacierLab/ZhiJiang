.class public Lorg/kamranzafar/jtar/Octal;
.super Ljava/lang/Object;
.source "Octal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckSumOctalBytes(J[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    add-int/2addr p3, p4

    add-int/lit8 p0, p3, -0x1

    const/16 p1, 0x20

    aput-byte p1, p2, p0

    add-int/lit8 p0, p3, -0x2

    const/4 p1, 0x0

    aput-byte p1, p2, p0

    return p3
.end method

.method public static getLongOctalBytes(J[BII)I
    .registers 8

    add-int/lit8 v0, p4, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2, v0}, Lorg/kamranzafar/jtar/Octal;->getOctalBytes(J[BII)I

    invoke-static {v1, v2, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    return p3
.end method

.method public static getOctalBytes(J[BII)I
    .registers 13

    add-int/lit8 v0, p4, -0x1

    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, v0

    const/16 v2, 0x20

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x30

    const-wide/16 v3, 0x0

    cmp-long v5, p0, v3

    if-nez v5, :cond_20

    add-int p0, p3, v0

    aput-byte v1, p2, p0

    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_36

    :cond_20
    :goto_20
    if-ltz v0, :cond_36

    cmp-long v5, p0, v3

    if-lez v5, :cond_36

    add-int v5, p3, v0

    const-wide/16 v6, 0x7

    and-long/2addr v6, p0

    long-to-int v7, v6

    int-to-byte v6, v7

    add-int/2addr v6, v1

    int-to-byte v6, v6

    aput-byte v6, p2, v5

    const/4 v5, 0x3

    shr-long/2addr p0, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_36
    :goto_36
    if-ltz v0, :cond_3d

    add-int p0, p3, v0

    aput-byte v2, p2, p0

    goto :goto_1d

    :cond_3d
    add-int/2addr p3, p4

    return p3
.end method

.method public static parseOctal([BII)J
    .registers 9

    add-int/2addr p2, p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    :goto_4
    if-ge p1, p2, :cond_2a

    aget-byte v3, p0, p1

    if-nez v3, :cond_b

    goto :goto_2a

    :cond_b
    aget-byte v3, p0, p1

    const/16 v4, 0x30

    const/16 v5, 0x20

    if-eq v3, v5, :cond_17

    aget-byte v3, p0, p1

    if-ne v3, v4, :cond_1f

    :cond_17
    if-eqz v0, :cond_1a

    goto :goto_27

    :cond_1a
    aget-byte v0, p0, p1

    if-ne v0, v5, :cond_1f

    goto :goto_2a

    :cond_1f
    const/4 v0, 0x0

    const/4 v3, 0x3

    shl-long/2addr v1, v3

    aget-byte v3, p0, p1

    sub-int/2addr v3, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    :goto_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_2a
    :goto_2a
    return-wide v1
.end method
