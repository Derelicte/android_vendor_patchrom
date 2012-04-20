.class Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;
.super Ljava/lang/Object;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncIcon"
.end annotation


# instance fields
.field private mCurrentId:Ljava/lang/String;

.field private final mView:Landroid/widget/ImageView;

.field private mWantedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/quicksearchbox/ui/DefaultSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->this$0:Lcom/android/quicksearchbox/ui/DefaultSuggestionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    return-void
.end method

.method private clearDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 233
    iput-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 234
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    return-void
.end method

.method private handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V
    .locals 2
    .parameter "icon"
    .parameter "id"
    .parameter "source"

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 218
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 224
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .parameter "icon"
    .parameter "id"

    .prologue
    .line 228
    iput-object p2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mView:Landroid/widget/ImageView;

    #calls: Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->access$200(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 230
    return-void
.end method


# virtual methods
.method protected getFallbackIcon(Lcom/android/quicksearchbox/Source;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "source"

    .prologue
    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFallbackIconId(Lcom/android/quicksearchbox/Source;)Ljava/lang/String;
    .locals 1
    .parameter "source"

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public set(Lcom/android/quicksearchbox/Source;Ljava/lang/String;)V
    .locals 5
    .parameter "source"
    .parameter "sourceIconId"

    .prologue
    const/4 v2, 0x0

    .line 179
    if-eqz p2, :cond_3

    .line 182
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Source;->getIconUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, iconUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 184
    .local v2, uniqueIconId:Ljava/lang/String;
    :goto_0
    iput-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mCurrentId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    invoke-interface {p1, p2}, Lcom/android/quicksearchbox/Source;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;

    move-result-object v0

    .line 188
    .local v0, icon:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v3, v2, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    .line 214
    .end local v0           #icon:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #iconUri:Landroid/net/Uri;
    .end local v2           #uniqueIconId:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 183
    .restart local v1       #iconUri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    .restart local v0       #icon:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .restart local v2       #uniqueIconId:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->clearDrawable()V

    .line 195
    new-instance v3, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon$1;-><init>(Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    invoke-interface {v0, v3}, Lcom/android/quicksearchbox/util/NowOrLater;->getLater(Lcom/android/quicksearchbox/util/Consumer;)V

    goto :goto_1

    .line 211
    .end local v0           #icon:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #iconUri:Landroid/net/Uri;
    .end local v2           #uniqueIconId:Ljava/lang/String;
    :cond_3
    iput-object v2, p0, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->mWantedId:Ljava/lang/String;

    .line 212
    invoke-direct {p0, v2, v2, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView$AsyncIcon;->handleNewDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lcom/android/quicksearchbox/Source;)V

    goto :goto_1
.end method
