.class public Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;
.super Ljava/lang/Object;
.source "ExpandableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/ui/ExpandableListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackupItem"
.end annotation


# instance fields
.field public backupTime:Ljava/lang/String;

.field public cloudCount:Ljava/lang/String;

.field public localCount:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/milk/ui/ExpandableListFragment;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/milk/ui/ExpandableListFragment;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object p1, p0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->this$0:Lcom/miui/milk/ui/ExpandableListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->title:Ljava/lang/String;

    .line 414
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->localCount:Ljava/lang/String;

    .line 415
    iput-object v0, p0, Lcom/miui/milk/ui/ExpandableListFragment$BackupItem;->cloudCount:Ljava/lang/String;

    return-void
.end method
