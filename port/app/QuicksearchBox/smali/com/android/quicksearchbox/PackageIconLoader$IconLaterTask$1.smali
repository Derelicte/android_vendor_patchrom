.class Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;->this$1:Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;

    iput-object p2, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;->this$1:Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;

    iget-object v1, p0, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->store(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;->access$200(Lcom/android/quicksearchbox/PackageIconLoader$IconLaterTask;Ljava/lang/Object;)V

    .line 242
    return-void
.end method
