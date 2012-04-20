.class public Lcom/miui/backup/BackupService$LocalBinder;
.super Landroid/os/Binder;
.source "BackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupService;


# direct methods
.method public constructor <init>(Lcom/miui/backup/BackupService;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/backup/BackupService$LocalBinder;->this$0:Lcom/miui/backup/BackupService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/miui/backup/BackupService;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/backup/BackupService$LocalBinder;->this$0:Lcom/miui/backup/BackupService;

    return-object v0
.end method
