.class Lcom/miui/supermarket/MainTabActivity$MainTabListener;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/MainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainTabListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method private constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$MainTabListener;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/miui/supermarket/MainTabActivity$MainTabListener;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 303
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 307
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$MainTabListener;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/supermarket/MainTabActivity$TabState;

    const/4 v2, 0x1

    #calls: Lcom/miui/supermarket/MainTabActivity;->selectTab(Lcom/miui/supermarket/MainTabActivity$TabState;Z)V
    invoke-static {v1, v0, v2}, Lcom/miui/supermarket/MainTabActivity;->access$500(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$TabState;Z)V

    .line 308
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 298
    return-void
.end method
