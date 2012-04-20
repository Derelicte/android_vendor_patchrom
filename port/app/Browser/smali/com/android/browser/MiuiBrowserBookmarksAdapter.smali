.class public Lcom/android/browser/MiuiBrowserBookmarksAdapter;
.super Lcom/android/browser/BrowserBookmarksAdapter;
.source "MiuiBrowserBookmarksAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "defaultView"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserBookmarksAdapter;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method


# virtual methods
.method bindGridView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 18
    const v4, 0x7f0d0022

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 19
    .local v0, thumb:Landroid/widget/ImageView;
    const v4, 0x7f0d001c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 21
    .local v3, tv:Landroid/widget/TextView;
    const/4 v4, 0x2

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    const v4, 0x7f0200b3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v4, 0x4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 27
    .local v2, thumbData:[B
    const/4 v1, 0x0

    .line 28
    .local v1, thumbBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 29
    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    :cond_1
    if-nez v1, :cond_2

    .line 32
    const v4, 0x7f020023

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
