# Derivatives of Common Functions

## The Power Function

The power function has the form 

$$f(x) = x^n$$

According to the definition of derivatives, we have

$$\frac{d}{d x}x^n = \lim_{h\to 0} \frac{(x+h)^n - x^n}{h}$$

Use the Binomial Theorem, we have:

$$(x+h)^n = \sum_{k=0}^n \binom{n}{k} x^{n-k} h^k $$

Because the first term in the above summation is $x^n$, so we have:

$$ \frac{(x+h)^n - x^n}{h} = \frac{ \sum_{k=1}^n \binom{n}{k} x^{n-k} h^k }{h} $$

Please be aware of the change of the range of $k$ from $0$ to $1$ in the summation.

Then, let us cancel $k$, the denominator, and get:

$$ \frac{ \sum_{k=1}^n \binom{n}{k} x^{n-k} h^k }{h} = \sum_{k=1}^n \binom{n}{k} x^{n-k} h^{k-1} $$

Please be aware of the change of the superscription of $h$ from $k$ to $k-1$.

This change inspires us to substitue $k-1$ by $k'$, which ranges from $0$ to $n-1$:

$$ \sum_{k=1}^n \binom{n}{k} x^{n-k} h^{k-1} = \sum_{k'=0}^{n-1} \binom{n}{k'} x^{n-k} h^{k'} $$

When $h\to 0$, most terms in above summation becomes $0$, except for the first one

$$\binom{n}{1} x^{n-1} h^0 = n x^{n-1}$$

So we have 

$$ \frac{d}{d x}x^n = n x^{n-1} $$

## The Exponential Function

The exponential function has the form

$$ f(x) = a^x $$

I didn't derive its derivative from the definition; instead, I used a property that the derivative of the *natural exponential function* is itself, or

$$ \frac{d}{d x} e^x = e^x $$

We will derive this property later.  For now, we just use it to derive the derivative of the general exponential function

$$ \frac{d}{d x} a^x = \frac{d}{d x} \left( e^{\ln(a)} \right)^x = \frac{d}{d x} e^{x \ln(a)} $$

Here we need to use the chain rule by assuming that $g(x)=x \ln(a)$, so we have

$$ \frac{d}{d x} e^{x \ln(a)} = \frac{d}{d g} e^g \frac{d}{d x} x \ln(a) = e^{x\ln(a)} \ln(a) = a^x \ln(a) $$

### The Natural Exponential Function

By the definition of derivatives, we have

$$ \frac{d}{d x} e^x = \lim_{h\to 0} \frac{e^{x+h} - e^x}{h} = \lim_{h\to 0} e^x \frac{(e^h - 1)}{h} $$

By the definition of $e$, or the [Eular's number](https://en.wikipedia.org/wiki/E_(mathematical_constant)), we have

$$ e = \lim_{n\to \infty} \left( 1 + \frac{1}{n} \right)^n $$

Please be aware that $n\to \infty$ implies that $1/n \to 0$.  By introducing $h=1/n$, we get another form of the definition of $e$:

$$ e = \lim_{h\to 0} \left( 1 + h \right)^\frac{1}{h} $$

Substitue this definition into the above derivative

$$ \frac{d}{d x} e^x = \lim_{h\to 0} e^x  \frac{ ((1+h)^\frac{1}{h})^h - 1}{h} = \lim_{h\to 0} e^x $$

## The Logarithm Function

The natural logarithm function has the form

$$f(x)=\ln(x)$$

Given that

$$ e^{\ln(x)} = x $$

The derivatives of both sides should be the same

$$ \frac{d}{d x} e^{\ln(x)} = \frac{d}{d x} x = 1 $$

Using the chain rule for the left side

$$ e^{\ln(x)} \frac{d}{d x} \ln(x) = 1 $$

So 

$$ \frac{d}{d x} \ln(x) = \frac{1}{e^{\ln(x)}} = \frac{1}{x} $$

We can extends to logarithm with arbitrary base

$$ f(x) = \log_a(x) $$

1. Using the quotient rule:

   $$ \frac{d}{d x}\log_a(x) = \frac{d}{d x} \frac{\ln(x)}{\ln(a)} = \frac{\ln'(x)\ln(a) - \ln(x)\ln'(a)}{\ln^2(a)}$$
   
   Because $\ln'(a)=0$, so 
   
   $$ \frac{d}{d x}\log_a(x) = \frac{1}{x \ln(a)} $$
   
1. Using the equality trick

   $$ \frac{d}{d x} a^{\log_a(x)} = \frac{d}{d x} x = 1 $$  
   
   and by the chain rule
   
   $$ \frac{d}{d x} a^{\log_a(x)} = a^{\log_a(x)} \ln(a) \frac{d}{d x} \log_a(x) = x \ln(a) \frac{d}{d x}\log_a(x) = 1 $$
   
   so we have
   
   $$ \frac{d}{d x} \log_a(x) = \frac{1}{x \ln(a)} $$
   
## Hyperbolic Functions

The tanh function is defined as
 
$$ \tanh(x) = \frac{ \sinh(x) }{ \cosh(x) } $$
 
where

$$ \sinh(x) = \frac{ e^x - e^{-x} }{ 2 } $$
 
and
 
$$ \cosh(x) = \frac{ e^x + e^{-x} }{ 2 } $$
 
 
It is easy to verify that

$$ \frac{d}{d x} \sinh(x) = \cosh(x) $$ 

and

$$ \frac{d}{d x} \cosh(x) = \sinh(x) $$

so according to the quotient rule, we have

$$ \frac{d}{d x} \tanh(x) = \frac{ \frac{d}{d x} \sinh(x) \cosh(x) - \sinh(x) \frac{d}{d x} \cosh(x) }{ \cosh^2(x) } = 1 - \tanh^2(x) $$