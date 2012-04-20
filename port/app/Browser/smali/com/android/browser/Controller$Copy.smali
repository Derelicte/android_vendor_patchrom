.class public Lcom/android/browser/Controller$Copy;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation build Landroid/annotation/MiuiHook;
    value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_ACCESS:Landroid/annotation/MiuiHook$MiuiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Copy"
.end annotation


# instance fields
.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/browser/Controller;


# direct methods
.method public constructor <init>(Lcom/android/browser/Controller;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "toCopy"

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/android/browser/Controller$Copy;->this$0:Lcom/android/browser/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2095
    iput-object p2, p0, Lcom/android/browser/Controller$Copy;->mText:Ljava/lang/CharSequence;

    .line 2096
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2090
    iget-object v0, p0, Lcom/android/browser/Controller$Copy;->this$0:Lcom/android/browser/Controller;

    iget-object v1, p0, Lcom/android/browser/Controller$Copy;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->copy(Ljava/lang/CharSequence;)V

    .line 2091
    const/4 v0, 0x1

    return v0
.end method
