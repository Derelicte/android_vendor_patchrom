.class Lcom/android/browser/MiuiPieControlPhone$1;
.super Ljava/lang/Object;
.source "MiuiPieControlPhone.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/MiuiPieControlPhone;->populateMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/MiuiPieControlPhone;


# direct methods
.method constructor <init>(Lcom/android/browser/MiuiPieControlPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/browser/MiuiPieControlPhone$1;->this$0:Lcom/android/browser/MiuiPieControlPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayout(IIZ)V
    .locals 1
    .parameter "ax"
    .parameter "ay"
    .parameter "left"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/browser/MiuiPieControlPhone$1;->this$0:Lcom/android/browser/MiuiPieControlPhone;

    #calls: Lcom/android/browser/MiuiPieControlPhone;->buildTabs()V
    invoke-static {v0}, Lcom/android/browser/MiuiPieControlPhone;->access$000(Lcom/android/browser/MiuiPieControlPhone;)V

    .line 64
    return-void
.end method
