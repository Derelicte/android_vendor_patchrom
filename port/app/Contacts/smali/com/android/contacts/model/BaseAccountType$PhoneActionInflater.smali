.class public Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 2
    .parameter "type"

    .prologue
    const v0, 0x7f0b00f6

    .line 502
    if-nez p1, :cond_0

    .line 524
    :goto_0
    :pswitch_0
    return v0

    .line 503
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 524
    const v0, 0x7f0b00ef

    goto :goto_0

    .line 504
    :pswitch_1
    const v0, 0x7f0b00f0

    goto :goto_0

    .line 505
    :pswitch_2
    const v0, 0x7f0b00f1

    goto :goto_0

    .line 506
    :pswitch_3
    const v0, 0x7f0b00f2

    goto :goto_0

    .line 507
    :pswitch_4
    const v0, 0x7f0b00f3

    goto :goto_0

    .line 508
    :pswitch_5
    const v0, 0x7f0b00f4

    goto :goto_0

    .line 509
    :pswitch_6
    const v0, 0x7f0b00f5

    goto :goto_0

    .line 511
    :pswitch_7
    const v0, 0x7f0b00f7

    goto :goto_0

    .line 512
    :pswitch_8
    const v0, 0x7f0b00f8

    goto :goto_0

    .line 513
    :pswitch_9
    const v0, 0x7f0b00f9

    goto :goto_0

    .line 514
    :pswitch_a
    const v0, 0x7f0b00fa

    goto :goto_0

    .line 515
    :pswitch_b
    const v0, 0x7f0b00fb

    goto :goto_0

    .line 516
    :pswitch_c
    const v0, 0x7f0b00fc

    goto :goto_0

    .line 517
    :pswitch_d
    const v0, 0x7f0b00fd

    goto :goto_0

    .line 518
    :pswitch_e
    const v0, 0x7f0b00fe

    goto :goto_0

    .line 519
    :pswitch_f
    const v0, 0x7f0b00ff

    goto :goto_0

    .line 520
    :pswitch_10
    const v0, 0x7f0b0100

    goto :goto_0

    .line 521
    :pswitch_11
    const v0, 0x7f0b0101

    goto :goto_0

    .line 522
    :pswitch_12
    const v0, 0x7f0b0102

    goto :goto_0

    .line 523
    :pswitch_13
    const v0, 0x7f0b0103

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method protected isCustom(Ljava/lang/Integer;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 497
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
