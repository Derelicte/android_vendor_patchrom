.class public Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;
.super Ljava/lang/Object;
.source "InputMethodInfoCompatWrapper.java"


# static fields
.field private static final METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

.field private static final METHOD_getSubtypeCount:Ljava/lang/reflect/Method;


# instance fields
.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 27
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeAt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeAt:Ljava/lang/reflect/Method;

    .line 29
    const-class v0, Landroid/view/inputmethod/InputMethodInfo;

    const-string v1, "getSubtypeCount"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->METHOD_getSubtypeCount:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 0
    .parameter "imi"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 67
    instance-of v0, p1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    check-cast p1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;

    .end local p1
    iget-object v1, p1, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/inputmethod/compat/InputMethodInfoCompatWrapper;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
