.class final Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;
.super Ljava/lang/Object;
.source "MiuiYellowpagePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiYellowpagePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnSiteItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiYellowpagePage;


# direct methods
.method private constructor <init>(Lcom/android/browser/MiuiYellowpagePage;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;->this$0:Lcom/android/browser/MiuiYellowpagePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/MiuiYellowpagePage;Lcom/android/browser/MiuiYellowpagePage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;-><init>(Lcom/android/browser/MiuiYellowpagePage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 44
    const v3, 0x7f0c0173

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    .local v0, category:I
    const v3, 0x7f0c0174

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 46
    .local v1, site:I
    iget-object v3, p0, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;->this$0:Lcom/android/browser/MiuiYellowpagePage;

    invoke-virtual {v3}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/provider/YellowPageDataProvider;->getCategories(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/provider/YellowPageDataProvider$Category;

    iget-object v3, v3, Lcom/android/browser/provider/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/provider/YellowPageDataProvider$Site;

    .line 47
    .local v2, targetSite:Lcom/android/browser/provider/YellowPageDataProvider$Site;
    iget-object v3, v2, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 48
    iget-object v3, p0, Lcom/android/browser/MiuiYellowpagePage$OnSiteItemClickListener;->this$0:Lcom/android/browser/MiuiYellowpagePage;

    invoke-virtual {v3}, Lcom/android/browser/MiuiYellowpagePage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/browser/BrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/BrowserActivity;->getController()Lcom/android/browser/Controller;

    move-result-object v3

    iget-object v4, v2, Lcom/android/browser/provider/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/browser/Controller;->loadUrlFromMiuiHome(Ljava/lang/String;)V

    .line 50
    :cond_0
    return-void
.end method
