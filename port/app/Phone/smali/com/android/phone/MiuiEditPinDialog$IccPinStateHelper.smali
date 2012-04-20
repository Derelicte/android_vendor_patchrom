.class Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;
.super Ljava/lang/Object;
.source "MiuiEditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MiuiEditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccPinStateHelper"
.end annotation


# static fields
.field private static sInitialized:Z

.field private static sPin2Locked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 558
    sput-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sInitialized:Z

    .line 559
    sput-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sPin2Locked:Z

    .line 562
    new-instance v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;

    invoke-direct {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper$1;->start()V

    .line 577
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 556
    invoke-static {p0}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->handlerIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V

    return-void
.end method

.method static synthetic access$800()Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    .prologue
    .line 556
    invoke-static {}, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    return-object v0
.end method

.method private static getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;
    .locals 5

    .prologue
    .line 614
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 615
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .line 616
    .local v0, basePhone:Lcom/android/internal/telephony/PhoneBase;
    instance-of v2, v1, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v2, :cond_0

    .line 617
    check-cast v1, Lcom/android/internal/telephony/PhoneProxy;

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .end local v0           #basePhone:Lcom/android/internal/telephony/PhoneBase;
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 624
    .restart local v0       #basePhone:Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v2

    .line 618
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    instance-of v2, v1, Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 619
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0

    .line 621
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static handlerIccCardStatus(Lcom/android/internal/telephony/IccCardStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 628
    invoke-static {p0}, Lcom/android/phone/MiuiIccCardApplicationProxy;->isPin2Locked(Lcom/android/internal/telephony/IccCardStatus;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sPin2Locked:Z

    .line 630
    const-class v1, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;

    monitor-enter v1

    .line 631
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sInitialized:Z

    .line 632
    const-class v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 633
    monitor-exit v1

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 580
    sget-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sInitialized:Z

    return v0
.end method

.method public static isPin1Locked()Z
    .locals 2

    .prologue
    .line 595
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPin2Locked()Z
    .locals 1

    .prologue
    .line 599
    sget-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sPin2Locked:Z

    return v0
.end method

.method public static updatePin2State(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 604
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sPin2Locked:Z

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 606
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 607
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 608
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sPin2Locked:Z

    goto :goto_0
.end method

.method public static waitForInitialization()V
    .locals 2

    .prologue
    .line 584
    const-class v1, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;

    monitor-enter v1

    .line 585
    :try_start_0
    sget-boolean v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 587
    :try_start_1
    const-class v0, Lcom/android/phone/MiuiEditPinDialog$IccPinStateHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 591
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 588
    :catch_0
    move-exception v0

    goto :goto_0
.end method
