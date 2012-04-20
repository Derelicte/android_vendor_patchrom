.class public Lcom/android/contacts/model/BaseAccountType$EmailActionInflater;
.super Lcom/android/contacts/model/BaseAccountType$CommonInflater;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailActionInflater"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType$CommonInflater;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTypeLabelResource(Ljava/lang/Integer;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 567
    if-nez p1, :cond_0

    const v0, 0x7f0b011f

    .line 573
    :goto_0
    return v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    const v0, 0x7f0b011e

    goto :goto_0

    .line 569
    :pswitch_0
    const v0, 0x7f0b011a

    goto :goto_0

    .line 570
    :pswitch_1
    const v0, 0x7f0b011c

    goto :goto_0

    .line 571
    :pswitch_2
    const v0, 0x7f0b011d

    goto :goto_0

    .line 572
    :pswitch_3
    const v0, 0x7f0b011b

    goto :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
