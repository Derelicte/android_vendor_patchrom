.class public Lcom/android/phone/MiuiIccCardApplicationProxy;
.super Ljava/lang/Object;
.source "MiuiIccCardApplicationProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPin2Locked(Lcom/android/internal/telephony/IccCardStatus;)Z
    .locals 7
    .parameter "iccCardStatus"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, app:Lcom/android/internal/telephony/IccCardApplication;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 11
    .local v2, phoneType:I
    if-ne v2, v4, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getGsmUmtsSubscriptionAppIndex()I

    move-result v1

    .line 13
    .local v1, index:I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    .line 25
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    :cond_1
    :goto_1
    return v3

    .line 16
    .end local v1           #index:I
    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getCdmaSubscriptionAppIndex()I

    move-result v1

    .line 18
    .restart local v1       #index:I
    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardStatus;->getNumApplications()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardStatus;->getApplication(I)Lcom/android/internal/telephony/IccCardApplication;

    move-result-object v0

    goto :goto_0

    .line 22
    .end local v1           #index:I
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 25
    .restart local v1       #index:I
    :cond_4
    iget-object v5, v0, Lcom/android/internal/telephony/IccCardApplication;->pin2:Lcom/android/internal/telephony/IccCardStatus$PinState;

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v5, v6, :cond_1

    move v3, v4

    goto :goto_1
.end method
