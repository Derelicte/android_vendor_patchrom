.class Lcom/android/quicksearchbox/CachingIconLoader$1;
.super Lcom/android/quicksearchbox/util/NowOrLaterWrapper;
.source "CachingIconLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/CachingIconLoader;->getIcon(Ljava/lang/String;)Lcom/android/quicksearchbox/util/NowOrLater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/util/NowOrLaterWrapper",
        "<",
        "Landroid/graphics/drawable/Drawable$ConstantState;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/CachingIconLoader;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/CachingIconLoader;Lcom/android/quicksearchbox/util/NowOrLater;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    .local p2, x0:Lcom/android/quicksearchbox/util/NowOrLater;,"Lcom/android/quicksearchbox/util/NowOrLater<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    iput-object p1, p0, Lcom/android/quicksearchbox/CachingIconLoader$1;->this$0:Lcom/android/quicksearchbox/CachingIconLoader;

    invoke-direct {p0, p2}, Lcom/android/quicksearchbox/util/NowOrLaterWrapper;-><init>(Lcom/android/quicksearchbox/util/NowOrLater;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"

    .prologue
    .line 73
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/CachingIconLoader$1;->get(Landroid/graphics/drawable/Drawable$ConstantState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
