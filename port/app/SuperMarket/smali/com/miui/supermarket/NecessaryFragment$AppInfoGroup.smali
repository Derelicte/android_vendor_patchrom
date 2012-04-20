.class Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;
.super Ljava/lang/Object;
.source "NecessaryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/NecessaryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInfoGroup"
.end annotation


# instance fields
.field public mInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/supermarket/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mKey:Ljava/lang/String;

.field public mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

.field final synthetic this$0:Lcom/miui/supermarket/NecessaryFragment;


# direct methods
.method private constructor <init>(Lcom/miui/supermarket/NecessaryFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->this$0:Lcom/miui/supermarket/NecessaryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mKey:Ljava/lang/String;

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mInfoList:Ljava/util/ArrayList;

    .line 515
    sget-object v0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;->UNSELECTED:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    iput-object v0, p0, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;->mStatus:Lcom/miui/supermarket/NecessaryFragment$AppInfoGroupStatus;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/supermarket/NecessaryFragment;Lcom/miui/supermarket/NecessaryFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/miui/supermarket/NecessaryFragment$AppInfoGroup;-><init>(Lcom/miui/supermarket/NecessaryFragment;)V

    return-void
.end method
