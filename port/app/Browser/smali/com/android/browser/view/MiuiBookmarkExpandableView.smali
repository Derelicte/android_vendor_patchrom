.class public Lcom/android/browser/view/MiuiBookmarkExpandableView;
.super Lcom/android/browser/view/BookmarkExpandableView;
.source "MiuiBookmarkExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/browser/view/BookmarkExpandableView;-><init>(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/browser/view/BookmarkExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/view/BookmarkExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected createBookmarkAccountAdapter(Landroid/content/Context;)Lcom/android/browser/view/BookmarkExpandableView$BookmarkAccountAdapter;
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/view/MiuiBookmarkExpandableView$MiuiBookmarkAccountAdapter;-><init>(Lcom/android/browser/view/MiuiBookmarkExpandableView;Landroid/content/Context;)V

    return-object v0
.end method
