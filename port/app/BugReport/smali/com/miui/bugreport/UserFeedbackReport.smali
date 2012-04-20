.class public Lcom/miui/bugreport/UserFeedbackReport;
.super Ljava/lang/Object;
.source "UserFeedbackReport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public board:Ljava/lang/String;

.field public brand:Ljava/lang/String;

.field public bugreport:Ljava/io/File;

.field public buildId:Ljava/lang/String;

.field public buildType:Ljava/lang/String;

.field public codename:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public device:Ljava/lang/String;

.field public incremental:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public networkName:Ljava/lang/String;

.field public networkType:I

.field public phoneType:I

.field public product:Ljava/lang/String;

.field public release:Ljava/lang/String;

.field public runningApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public screenshot:Ljava/io/File;

.field public subject:Ljava/lang/String;

.field public systemLog:Ljava/io/File;

.field public timestamp:J

.field public uiLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/bugreport/UserFeedbackReport;->runningApplications:Ljava/util/List;

    return-void
.end method
