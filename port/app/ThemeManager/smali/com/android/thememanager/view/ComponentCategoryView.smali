.class public Lcom/android/thememanager/view/ComponentCategoryView;
.super Landroid/widget/LinearLayout;
.source "ComponentCategoryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;,
        Lcom/android/thememanager/view/ComponentCategoryView$FixedHeightGridView;
    }
.end annotation


# static fields
.field private static mGridLineHeight:I


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/thememanager/view/ComponentCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/thememanager/view/ComponentCategoryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/thememanager/view/ComponentCategoryView;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridLineHeight:I

    return v0
.end method

.method private static computeGridItemHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    sget v0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridLineHeight:I

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridLineHeight:I

    .line 87
    :cond_0
    sget v0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridLineHeight:I

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 44
    const v0, 0x7f060007

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/ComponentCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/thememanager/view/ComponentCategoryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/thememanager/view/ComponentCategoryView;->computeGridItemHeight(Landroid/content/Context;)I

    .line 49
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 80
    return-void
.end method

.method public setComponentItems(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, componentFlags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 63
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "GridView has been set adater."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;

    invoke-virtual {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/thememanager/view/ComponentCategoryView$GridAdapter;-><init>(Lcom/android/thememanager/view/ComponentCategoryView;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/android/thememanager/view/ComponentCategoryView$1;

    invoke-direct {v1, p0}, Lcom/android/thememanager/view/ComponentCategoryView$1;-><init>(Lcom/android/thememanager/view/ComponentCategoryView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/thememanager/view/ComponentCategoryView;->init()V

    .line 53
    iget-object v0, p0, Lcom/android/thememanager/view/ComponentCategoryView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method
