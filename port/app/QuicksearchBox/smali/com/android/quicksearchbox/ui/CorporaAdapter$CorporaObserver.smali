.class Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;
.super Landroid/database/DataSetObserver;
.source "CorporaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/CorporaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CorporaObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quicksearchbox/ui/CorporaAdapter;


# direct methods
.method private constructor <init>(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;->this$0:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/quicksearchbox/ui/CorporaAdapter;Lcom/android/quicksearchbox/ui/CorporaAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;-><init>(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;->this$0:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    #calls: Lcom/android/quicksearchbox/ui/CorporaAdapter;->updateCorpora()V
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->access$200(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V

    .line 189
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/CorporaAdapter$CorporaObserver;->this$0:Lcom/android/quicksearchbox/ui/CorporaAdapter;

    #calls: Lcom/android/quicksearchbox/ui/CorporaAdapter;->updateCorpora()V
    invoke-static {v0}, Lcom/android/quicksearchbox/ui/CorporaAdapter;->access$200(Lcom/android/quicksearchbox/ui/CorporaAdapter;)V

    .line 194
    return-void
.end method
