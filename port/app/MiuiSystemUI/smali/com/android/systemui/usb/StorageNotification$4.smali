.class final Lcom/android/systemui/usb/StorageNotification$4;
.super Ljava/lang/Thread;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/StorageNotification;->switchUsbMassStorage(Landroid/os/storage/StorageManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$on:Z

.field final synthetic val$storageManager:Landroid/os/storage/StorageManager;


# direct methods
.method constructor <init>(ZLandroid/os/storage/StorageManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification$4;->val$on:Z

    iput-object p2, p0, Lcom/android/systemui/usb/StorageNotification$4;->val$storageManager:Landroid/os/storage/StorageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/systemui/usb/StorageNotification$4;->val$on:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$4;->val$storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$4;->val$storageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_0
.end method
