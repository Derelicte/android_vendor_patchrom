.class public Lcom/miui/milk/service/CloudBackupService$CloudBinder;
.super Landroid/os/Binder;
.source "CloudBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/service/CloudBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/milk/service/CloudBackupService;


# direct methods
.method public constructor <init>(Lcom/miui/milk/service/CloudBackupService;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->this$0:Lcom/miui/milk/service/CloudBackupService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/miui/milk/service/CloudBackupService;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/milk/service/CloudBackupService$CloudBinder;->this$0:Lcom/miui/milk/service/CloudBackupService;

    return-object v0
.end method
