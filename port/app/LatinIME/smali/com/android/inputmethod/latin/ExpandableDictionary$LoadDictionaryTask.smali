.class Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;
.super Ljava/lang/Thread;
.source "ExpandableDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/ExpandableDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadDictionaryTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V
    .locals 0
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/latin/ExpandableDictionary;Lcom/android/inputmethod/latin/ExpandableDictionary$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;-><init>(Lcom/android/inputmethod/latin/ExpandableDictionary;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->loadDictionaryAsync()V

    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    #getter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$200(Lcom/android/inputmethod/latin/ExpandableDictionary;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/ExpandableDictionary$LoadDictionaryTask;->this$0:Lcom/android/inputmethod/latin/ExpandableDictionary;

    const/4 v2, 0x0

    #setter for: Lcom/android/inputmethod/latin/ExpandableDictionary;->mUpdatingDictionary:Z
    invoke-static {v0, v2}, Lcom/android/inputmethod/latin/ExpandableDictionary;->access$302(Lcom/android/inputmethod/latin/ExpandableDictionary;Z)Z

    .line 555
    monitor-exit v1

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
