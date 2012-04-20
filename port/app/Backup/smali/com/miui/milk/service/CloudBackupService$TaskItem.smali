.class Lcom/miui/milk/service/CloudBackupService$TaskItem;
.super Ljava/lang/Object;
.source "CloudBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/service/CloudBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskItem"
.end annotation


# instance fields
.field public baseCloudController:Lcom/miui/milk/control/cloud/BaseCloudController;

.field public id:J

.field public name:Ljava/lang/String;

.field public taskId:J

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/service/CloudBackupService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/miui/milk/service/CloudBackupService$TaskItem;-><init>()V

    return-void
.end method
