.class Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;
.super Landroid/widget/BaseAdapter;
.source "ComponentCategoryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/view/ComponentCategoryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/thememanager/view/ComponentCategoryView;


# direct methods
.method public constructor <init>(Lcom/android/thememanager/view/ComponentCategoryView;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p3, flags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->this$0:Lcom/android/thememanager/view/ComponentCategoryView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    .line 121
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 135
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 140
    move-object v5, p2

    .line 141
    .local v5, view:Landroid/view/View;
    if-nez v5, :cond_0

    .line 142
    iget-object v6, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030003

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 145
    :cond_0
    iget-object v6, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mFlags:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 147
    .local v0, componentFlag:J
    const v6, 0x7f060007

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 148
    .local v4, titleView:Landroid/widget/TextView;
    invoke-static {v0, v1}, Lcom/android/thememanager/ThemeHelper;->getTitleIDByFlag(J)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 150
    const v6, 0x7f06000a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 151
    .local v3, summaryView:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f09000a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, summary:Ljava/lang/String;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    return-object v5
.end method
