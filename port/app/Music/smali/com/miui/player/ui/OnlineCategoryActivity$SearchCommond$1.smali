.class Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;
.super Ljava/lang/Object;
.source "OnlineCategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->doSearch(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;

.field final synthetic val$searchInput:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;->this$1:Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;

    iput-object p2, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;->val$searchInput:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;->this$1:Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;

    iget-object v0, v0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond;->this$0:Lcom/miui/player/ui/OnlineCategoryActivity;

    iget-object v1, p0, Lcom/miui/player/ui/OnlineCategoryActivity$SearchCommond$1;->val$searchInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/OnlineCategoryActivity;->gotoSearch(Ljava/lang/String;)V

    .line 164
    return-void
.end method
