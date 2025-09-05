[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Enrique Ruiz

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data?
	- There are 43 unique users in the data
* How many salts did you create?
	- one for each user (43), 1303 was the wc -l result
* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)
	- 43 x 43 = 1849 checks
* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?
	- 10^5 = 100,000 x 43 = 4,300,000
* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?
	- Using a salt would be good since my first and last name are already public info

```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 1 here
```

---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
## 399these
## 213commonly
## 425dictionary
~                  
```

* How many words were in your dictionary?
	-14 words
* How many nonces did your code iterate over?
	-my script only printed nonces starting with 000 and thats it
* What was the maximum number of hashes your code *could* compute given the above?
	-1,400,000,000
* What did you think about Task 2?
	-it was challenging for me since i joined the course late but tried to use the slides as much as possible
	as well as some online resources like stackoverflow
* Is there a better way than brute force to attempt to get higher valued coins?
	-brute force is already the best choice in terms of speed
* Why or why not?
	-brute force is the fastest option


```bash
please put any cool bash one-liners or other piped commands you
learned/struggled with for task 2 here
```

