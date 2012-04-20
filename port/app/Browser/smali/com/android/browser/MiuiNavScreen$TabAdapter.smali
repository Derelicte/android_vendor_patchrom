.class Lcom/android/browser/MiuiNavScreen$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiuiNavScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/MiuiNavScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field tabControl:Lcom/android/browser/TabControl;

.field final synthetic this$0:Lcom/android/browser/MiuiNavScreen;


# direct methods
.method public constructor <init>(Lcom/android/browser/MiuiNavScreen;Landroid/content/Context;Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter
    .parameter "ctx"
    .parameter "tc"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->context:Landroid/content/Context;

    .line 171
    iput-object p3, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    .line 172
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/browser/Tab;
    .locals 1
    .parameter "position"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->tabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiNavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 185
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 190
    new-instance v1, Lcom/android/browser/NavTabView;

    iget-object v2, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/browser/MiuiNavScreen;->access$400(Lcom/android/browser/MiuiNavScreen;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/browser/NavTabView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v1, tabview:Lcom/android/browser/NavTabView;
    invoke-virtual {p0, p1}, Lcom/android/browser/MiuiNavScreen$TabAdapter;->getItem(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 192
    .local v0, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1, v0}, Lcom/android/browser/NavTabView;->setWebView(Lcom/android/browser/Tab;)V

    .line 193
    iget-object v2, p0, Lcom/android/browser/MiuiNavScreen$TabAdapter;->this$0:Lcom/android/browser/MiuiNavScreen;

    #getter for: Lcom/android/browser/MiuiNavScreen;->mTabViews:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/browser/MiuiNavScreen;->access$500(Lcom/android/browser/MiuiNavScreen;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/android/browser/NavTabView;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    new-instance v2, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/browser/MiuiNavScreen$TabAdapter$1;-><init>(Lcom/android/browser/MiuiNavScreen$TabAdapter;Lcom/android/browser/NavTabView;Lcom/android/browser/Tab;I)V

    invoke-virtual {v1, v2}, Lcom/android/browser/NavTabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    return-object v1
.end method
