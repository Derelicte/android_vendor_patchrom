.class Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;
.super Ljava/lang/Object;
.source "MainTabActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/supermarket/MainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainPageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/supermarket/MainTabActivity;


# direct methods
.method private constructor <init>(Lcom/miui/supermarket/MainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;->this$0:Lcom/miui/supermarket/MainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;-><init>(Lcom/miui/supermarket/MainTabActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 315
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 319
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 323
    invoke-static {p1}, Lcom/miui/supermarket/MainTabActivity$TabState;->fromInt(I)Lcom/miui/supermarket/MainTabActivity$TabState;

    move-result-object v0

    .line 324
    .local v0, tab:Lcom/miui/supermarket/MainTabActivity$TabState;
    iget-object v1, p0, Lcom/miui/supermarket/MainTabActivity$MainPageChangeListener;->this$0:Lcom/miui/supermarket/MainTabActivity;

    const/4 v2, 0x0

    #calls: Lcom/miui/supermarket/MainTabActivity;->selectTab(Lcom/miui/supermarket/MainTabActivity$TabState;Z)V
    invoke-static {v1, v0, v2}, Lcom/miui/supermarket/MainTabActivity;->access$500(Lcom/miui/supermarket/MainTabActivity;Lcom/miui/supermarket/MainTabActivity$TabState;Z)V

    .line 325
    return-void
.end method
