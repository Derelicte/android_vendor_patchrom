.class public Lcom/miui/milk/common/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field public checked:Z

.field public dataDir:Ljava/lang/String;

.field public disabled:Z

.field public display:Ljava/lang/String;

.field public error:Z

.field public id:I

.field public miuiVersion:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public packagePath:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/milk/common/AppInfo;->type:I

    return-void
.end method
