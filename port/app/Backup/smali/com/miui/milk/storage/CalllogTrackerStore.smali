.class public Lcom/miui/milk/storage/CalllogTrackerStore;
.super Lcom/miui/milk/storage/BaseTrackerStore;
.source "CalllogTrackerStore.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/miui/milk/storage/BaseTrackerStore;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public setMemberVariables()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "calls"

    iput-object v0, p0, Lcom/miui/milk/storage/CalllogTrackerStore;->mTableName:Ljava/lang/String;

    .line 14
    return-void
.end method
